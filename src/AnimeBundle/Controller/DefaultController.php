<?php

namespace AnimeBundle\Controller;

use AnimeBundle\Entity\UserHasAnimes;
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

        $followersRanking = $em->getRepository('AnimeBundle:UserHasAnimes')->getFollowersRanking();
        $favorisRanking = $em->getRepository('AnimeBundle:UserHasAnimes')->getFavorisRanking();
        $scoreRanking = $em->getRepository('AnimeBundle:AnimeScore')->getScoreRanking();


        return $this->render('default/index.html.twig', array(
            'episodes' => $episodes,
            'followersRanking' => $followersRanking,
            'favorisRanking'=> $favorisRanking,
            'scoreRanking'=> $scoreRanking,
        ));
    }
}
