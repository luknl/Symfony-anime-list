<?php

namespace AnimeBundle\Controller;

use AnimeBundle\Entity\Episode;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

/**
 * Episode controller.
 *
 * @Route("episode")
 */
class EpisodeController extends Controller
{
    /**
     * Lists all episode entities.
     *
     * @Route("/", name="episode_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $episodes = $em->getRepository('AnimeBundle:Episode')->findAllOrderByDate();

        $animeName = [];
        foreach ($episodes as $episode) {
            $animeName[$episode->getId()] = $episode->getAnime()->getName();
        }

        return $this->render('episode/index.html.twig', array(
            'episodes' => $episodes,
            'animeName' => $animeName,
        ));
    }

    /**
     * Finds and displays a episode entity.
     *
     * @Route("/{id}", name="episode_show")
     * @Method("GET")
     */
    public function showAction(Episode $episode)
    {
        #$deleteForm = $this->createDeleteForm($episode);

        $animeName = $episode->getAnime()->getName();

        return $this->render('episode/show.html.twig', array(
            'episode' => $episode,
            'animeName' => $animeName,
            #'delete_form' => $deleteForm->createView(),
        ));
    }
}
