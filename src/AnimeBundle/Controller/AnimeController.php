<?php

namespace AnimeBundle\Controller;

use AnimeBundle\Entity\Anime;
use AnimeBundle\Entity\UserHasAnimes;
use Symfony\Bridge\Twig\Node\RenderBlockNode;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

/**
 * Anime controller.
 *
 * @Route("anime")
 */
class AnimeController extends Controller
{
    /**
     * Lists all anime entities.
     *
     * @Route("/", name="anime_index")
     * @Method("GET")
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $animes = $em->getRepository('AnimeBundle:Anime')->findAll();

        $typeName = [];
        $genreName = [];
        foreach ($animes as $anime) {
            $typeName[$anime->getId()] = $anime->getType()->getName();
            $genreName[$anime->getId()] = $anime->getGenre()->getName();
        }

        return $this->render('anime/index.html.twig', array(
            'animes' => $animes,
            'typeName' => $typeName,
            'genreName' => $genreName,
        ));
    }

    /**
     * Finds and displays a anime entity.
     * @param Anime $anime
     *
     * @Route("/{id}", name="anime_show")
     * @Method("GET")
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function showAction(Anime $anime)
    {
        $animeId = $anime->getId();

        $em = $this->getDoctrine()->getManager();

        $typeName = $anime->getType()->getName();
        $genreName = $anime->getGenre()->getName();

        $user = $this->getUser();
        $episodes = $em->getRepository('AnimeBundle:Episode')->findAllById($animeId);
        $episodeCount = count($episodes);
        $reviews = $em->getRepository('AnimeBundle:AnimeReview')->findAllById($animeId);
        $notationAvg = $em->getRepository('AnimeBundle:AnimeScore')->getAverageById($animeId);
        $followers = $em->getRepository('AnimeBundle:UserHasAnimes')->getFollowersById($animeId);
        $favoris = $em->getRepository('AnimeBundle:UserHasAnimes')->getFavorisById($animeId);

        $following = $em->getRepository('AnimeBundle:UserHasAnimes')->findByAnimeAndUserId($animeId, $user);

        return $this->render('anime/show.html.twig', array(
            'anime' => $anime,
            'typeName' => $typeName,
            'genreName' => $genreName,
            'episodes' => $episodes,
            'episodeCount' => $episodeCount,
            'reviews' => $reviews,
            'user' => $user,
            'notationAvg' => $notationAvg,
            'followers' => $followers,
            'favoris' => $favoris,
            'following' => $following,
        ));
    }

    /**
     * Follow an anime
     * @param Anime $anime
     *
     * @Route("/{id}/follow", requirements={"id" = "\d+"}, name="anime_follow")
     * @return RedirectResponse
     */
    public function followAction(Anime $anime)
    {
        $userHasAnimes = new UserHasAnimes();

        $userHasAnimes->setUser($this->getUser());
        $userHasAnimes->setAnime($anime);
        $userHasAnimes->setFavori('false');

        $em = $this->getDoctrine()->getManager();
        $em->persist($userHasAnimes);
        $em->flush($userHasAnimes);

        return $this->redirectToRoute('anime_show', array('id' => $anime->getId()));
    }

    /**
     * Unfollow an anime
     * @param Anime $anime
     *
     * @Route("/{id}/unfollow", requirements={"id" = "\d+"}, name="anime_unfollow")
     * @return RedirectResponse
     */
    public function unfollowAction(Anime $anime)
    {
        $userId = $this->getUser()->getId();
        $em = $this->getDoctrine()->getManager();
        $repository = $em->getRepository('AnimeBundle:UserHasAnimes');

        $userHasAnimes = $repository->findByAnimeAndUserId($anime->getId(), $userId);
        $em->remove($userHasAnimes[0]);
        $em->flush();

        return $this->redirectToRoute('anime_show', array('id' => $anime->getId()));
    }

    /**
     * Favorite an anime
     * @param Anime $anime
     *
     * @Route("/{id}/fav", requirements={"id" = "\d+"}, name="anime_fav")
     * @return RedirectResponse
     */
    public function favAction(Anime $anime)
    {
        $userId = $this->getUser()->getId();
        $em = $this->getDoctrine()->getManager();
        $repository = $em->getRepository('AnimeBundle:UserHasAnimes');
        $userHasAnimes = $repository->findByAnimeAndUserId($anime->getId(), $userId);

        if ($userHasAnimes != null) {
            $userHasAnimes[0]->setFavori('1');
            $em->flush();
        }

        return $this->redirectToRoute('anime_show', array('id' => $anime->getId()));
    }

    /**
     * Unfavorite an anime
     * @param Anime $anime
     *
     * @Route("/{id}/unfav", requirements={"id" = "\d+"}, name="anime_unfav")
     * @return RedirectResponse
     */
    public function unfavAction(Anime $anime)
    {
        $userId = $this->getUser()->getId();
        $em = $this->getDoctrine()->getManager();
        $repository = $em->getRepository('AnimeBundle:UserHasAnimes');
        $userHasAnimes = $repository->findByAnimeAndUserId($anime->getId(), $userId);
        $userHasAnimes[0]->setFavori('0');
        $em->flush();

        return $this->redirectToRoute('anime_show', array('id' => $anime->getId()));
    }
}
