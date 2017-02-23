<?php

namespace AnimeBundle\Controller;

use AnimeBundle\Entity\UserHasAnimes;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;use Symfony\Component\HttpFoundation\Request;

/**
 * Userhasanime controller.
 *
 * @Route("userhasanimes")
 */
class UserHasAnimesController extends Controller
{
    /**
     * Lists all userHasAnime entities.
     *
     * @Route("/", name="userhasanimes_index")
     * @Method("GET")
     */
    /*public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $userHasAnimes = $em->getRepository('AnimeBundle:UserHasAnimes')->findAll();

        $animeName = [];
        foreach($userHasAnimes as $userHasAnime) {
            $animeName[$userHasAnime->getId()] = $userHasAnime->getAnime()->getName();
        }

        return $this->render('userhasanimes/index.html.twig', array(
            'userHasAnimes' => $userHasAnimes,
            'animeName' => $animeName,
        ));
    }*/

    /**
     * Creates a new userHasAnimes entity.
     *
     * @Route("/new", name="userhasanimes_new")
     * @Method({"GET", "POST"})
     */
    /*public function newAction(Request $request)
    {
        $userHasAnime = new Userhasanimes();
        $form = $this->createForm('AnimeBundle\Form\UserHasAnimesType', $userHasAnime);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($userHasAnime);
            $em->flush($userHasAnime);

            return $this->redirectToRoute('userhasanimes_show', array('id' => $userHasAnime->getId()));
        }

        return $this->render('userhasanimes/new.html.twig', array(
            'userHasAnime' => $userHasAnime,
            'form' => $form->createView(),
        ));
    }*/

    /**
     * Finds and displays a userHasAnime entity.
     *
     * @Route("/{id}", name="userhasanimes_show")
     * @Method("GET")
     */
    /*public function showAction(UserHasAnimes $userHasAnime)
    {
        $deleteForm = $this->createDeleteForm($userHasAnime);

        $animeName = $userHasAnime->getAnime()->getName();

        return $this->render('userhasanimes/show.html.twig', array(
            'userHasAnime' => $userHasAnime,
            'animeName' => $animeName,
            'delete_form' => $deleteForm->createView(),
        ));
    }*/

    /**
     * Displays a form to edit an existing userHasAnime entity.
     *
     * @Route("/{id}/edit", name="userhasanimes_edit")
     * @Method({"GET", "POST"})
     */
    /*public function editAction(Request $request, UserHasAnimes $userHasAnime)
    {
        $deleteForm = $this->createDeleteForm($userHasAnime);
        $editForm = $this->createForm('AnimeBundle\Form\UserHasAnimesType', $userHasAnime);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('userhasanimes_edit', array('id' => $userHasAnime->getId()));
        }

        return $this->render('userhasanimes/edit.html.twig', array(
            'userHasAnime' => $userHasAnime,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }*/

    /**
     * Deletes a userHasAnime entity.
     *
     * @Route("/{id}", name="userhasanimes_delete")
     * @Method("DELETE")
     */
    /*public function deleteAction(Request $request, UserHasAnimes $userHasAnime)
    {
        $form = $this->createDeleteForm($userHasAnime);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($userHasAnime);
            $em->flush($userHasAnime);
        }

        return $this->redirectToRoute('userhasanimes_index');
    }*/

    /**
     * Creates a form to delete a userHasAnime entity.
     *
     * @param UserHasAnimes $userHasAnime The userHasAnime entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    /*private function createDeleteForm(UserHasAnimes $userHasAnime)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('userhasanimes_delete', array('id' => $userHasAnime->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }*/
}
