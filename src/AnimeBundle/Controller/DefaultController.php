<?php

namespace AnimeBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class DefaultController extends Controller
{
    /**
     * @Route("/")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();
        $episodes = $em->getRepository('AnimeBundle:Episode')->findAllOrderByDate();

        return $this->render('default/index.html.twig', array(
            'episodes' => $episodes,
        ));
    }
}
