<?php

namespace AnimeBundle\Controller;

use AnimeBundle\Entity\AnimeGenre;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

/**
 * Animegenre controller.
 *
 * @Route("animegenre")
 */
class AnimeGenreController extends Controller
{
    /**
     * Lists all animeGenre entities.
     *
     * @Route("/", name="animegenre_index")
     * @Method("GET")
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $animeGenres = $em->getRepository('AnimeBundle:AnimeGenre')->findAll();

        return $this->render('animegenre/index.html.twig', array(
            'animeGenres' => $animeGenres,
        ));
    }

    /**
     * Finds and displays a animeGenre entity.
     * @param AnimeGenre $animeGenre
     *
     * @Route("/{id}", name="animegenre_show")
     * @Method("GET")
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function showAction(AnimeGenre $animeGenre)
    {
        $em = $this->getDoctrine()->getManager();
        $animeGenres = $em->getRepository('AnimeBundle:AnimeGenre')->findAll();
        $animes = $em->getRepository('AnimeBundle:Anime');
        $animes = $animes->findByGenre($animeGenre->getId());

        return $this->render('animegenre/show.html.twig', array(
            'genre' => $animeGenre,
            'animeGenres' => $animeGenres,
            'animes' => $animes,
        ));
    }
}
