<?php

/*
 * This file is part of the FOSUserBundle package.
 *
 * (c) FriendsOfSymfony <http://friendsofsymfony.github.com/>
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

namespace UserBundle\Controller;

use AnimeBundle\Entity\UserHasAnimes;
use FOS\UserBundle\Event\FilterUserResponseEvent;
use FOS\UserBundle\Event\FormEvent;
use FOS\UserBundle\Event\GetResponseUserEvent;
use FOS\UserBundle\Form\Factory\FactoryInterface;
use FOS\UserBundle\FOSUserEvents;
use FOS\UserBundle\Model\UserInterface;
use FOS\UserBundle\Model\UserManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\EventDispatcher\EventDispatcherInterface;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Security\Core\Exception\AccessDeniedException;

/**
 * Controller managing the user profile.
 *
 * @author Christophe Coevoet <stof@notk.org>
 */
class ProfileController extends Controller
{
    /**
     * Show the user.
     */
    public function showAction()
    {
        $user = $this->getUser();
        if (!is_object($user) || !$user instanceof UserInterface) {
            throw new AccessDeniedException('This user does not have access to this section.');
        }

        $em = $this->getDoctrine()->getManager();
        $userHasAnimes = $em->getRepository('AnimeBundle:UserHasAnimes')->findByUser( $this->getUser() );
        $reviews = $em->getRepository('AnimeBundle:AnimeReview')->findByUser( $this->getUser() );
        $userHasAnimesCount = count($userHasAnimes);
        $reviewsCount = count($reviews);

        return $this->render('@FOSUser/Profile/show.html.twig', array(
            'user' => $user,
            'userHasAnimes' => $userHasAnimes,
            'userHasAnimesCount' => $userHasAnimesCount,
            'reviews' => $reviews,
            'reviewsCount' => $reviewsCount,
        ));
    }

}
