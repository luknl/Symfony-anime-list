<?php

namespace AnimeBundle\Controller;

use AnimeBundle\Entity\UserHasEpisodes;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;use Symfony\Component\HttpFoundation\Request;

/**
 * Userhasepisode controller.
 *
 * @Route("userhasepisodes")
 */
class UserHasEpisodesController extends Controller
{
    /**
     * Lists all userHasEpisode entities.
     *
     * @Route("/", name="userhasepisodes_index")
     * @Method("GET")
     */
    /*public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $userHasEpisodes = $em->getRepository('AnimeBundle:UserHasEpisodes')->findAll();

        $episodeName = [];
        foreach($userHasEpisodes as $userHasEpisode) {
            $episodeName[$userHasEpisode->getId()] = $userHasEpisode->getEpisode()->getName();
        }

        return $this->render('userhasepisodes/index.html.twig', array(
            'userHasEpisodes' => $userHasEpisodes,
            'episodeName' => $episodeName,
        ));
    }*/

    /**
     * Creates a new userHasEpisodes entity.
     *
     * @Route("/new", name="userhasepisodes_new")
     * @Method({"GET", "POST"})
     */
    /*public function newAction(Request $request)
    {
        $userHasEpisode = new Userhasepisodes();
        $form = $this->createForm('AnimeBundle\Form\UserHasEpisodesType', $userHasEpisode);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($userHasEpisode);
            $em->flush($userHasEpisode);

            return $this->redirectToRoute('userhasepisodes_show', array('id' => $userHasEpisode->getId()));
        }

        return $this->render('userhasepisodes/new.html.twig', array(
            'userHasEpisode' => $userHasEpisode,
            'form' => $form->createView(),
        ));
    }*/

    /**
     * Finds and displays a userHasEpisode entity.
     *
     * @Route("/{id}", name="userhasepisodes_show")
     * @Method("GET")
     */
    /*public function showAction(UserHasEpisodes $userHasEpisode)
    {
        $deleteForm = $this->createDeleteForm($userHasEpisode);

        $episodeName = $userHasEpisode->getEpisode()->getName();

        return $this->render('userhasepisodes/show.html.twig', array(
            'userHasEpisode' => $userHasEpisode,
            'episodeName' => $episodeName,
            'delete_form' => $deleteForm->createView(),
        ));
    }*/

    /**
     * Displays a form to edit an existing userHasEpisode entity.
     *
     * @Route("/{id}/edit", name="userhasepisodes_edit")
     * @Method({"GET", "POST"})
     */
    /*public function editAction(Request $request, UserHasEpisodes $userHasEpisode)
    {
        $deleteForm = $this->createDeleteForm($userHasEpisode);
        $editForm = $this->createForm('AnimeBundle\Form\UserHasEpisodesType', $userHasEpisode);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('userhasepisodes_edit', array('id' => $userHasEpisode->getId()));
        }

        return $this->render('userhasepisodes/edit.html.twig', array(
            'userHasEpisode' => $userHasEpisode,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }*/

    /**
     * Deletes a userHasEpisode entity.
     *
     * @Route("/{id}", name="userhasepisodes_delete")
     * @Method("DELETE")
     */
    /*public function deleteAction(Request $request, UserHasEpisodes $userHasEpisode)
    {
        $form = $this->createDeleteForm($userHasEpisode);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($userHasEpisode);
            $em->flush($userHasEpisode);
        }

        return $this->redirectToRoute('userhasepisodes_index');
    }*/

    /**
     * Creates a form to delete a userHasEpisode entity.
     *
     * @param UserHasEpisodes $userHasEpisode The userHasEpisode entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    /*private function createDeleteForm(UserHasEpisodes $userHasEpisode)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('userhasepisodes_delete', array('id' => $userHasEpisode->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }*/
}
