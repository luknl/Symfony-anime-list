<?php

namespace AnimeBundle\Controller;

use AnimeBundle\Entity\EpisodeReview;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

/**
 * Episodereview controller.
 *
 * @Route("episodereview")
 */
class EpisodeReviewController extends Controller
{
    /**
     * Lists all episodeReview entities.
     *
     * @Route("/", name="episodereview_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $episodeReviews = $em->getRepository('AnimeBundle:EpisodeReview')->findAll();

        $episodeName = [];
        foreach ($episodeReviews as $episodeReview) {
            $episodeName[$episodeReview->getId()] = $episodeReview->getEpisode()->getName();
        }

        return $this->render('episodereview/index.html.twig', array(
            'episodeReviews' => $episodeReviews,
            'episodeName' => $episodeName,
        ));
    }

    /**
     * Creates a new episodeReview entity.
     *
     * @Route("/new", name="episodereview_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $episodeReview = new Episodereview();
        $form = $this->createForm('AnimeBundle\Form\EpisodeReviewType', $episodeReview);
        $form->handleRequest($request);
        #$episodeReview->setCreated( new \DateTime('now') );

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($episodeReview);
            $em->flush($episodeReview);

            return $this->redirectToRoute('episodereview_show', array('id' => $episodeReview->getId()));
        }

        return $this->render('episodereview/new.html.twig', array(
            'episodeReview' => $episodeReview,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a episodeReview entity.
     *
     * @Route("/{id}", name="episodereview_show")
     * @Method("GET")
     */
    public function showAction(EpisodeReview $episodeReview)
    {
        #$deleteForm = $this->createDeleteForm($episodeReview);

        $episodeName = $episodeReview->getEpisode()->getName();

        return $this->render('episodereview/show.html.twig', array(
            'episodeReview' => $episodeReview,
            'episodeName' => $episodeName,
            #'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing episodeReview entity.
     *
     * @Route("/{id}/edit", name="episodereview_edit")
     * @Method({"GET", "POST"})
     */
    /*public function editAction(Request $request, EpisodeReview $episodeReview)
    {
        $deleteForm = $this->createDeleteForm($episodeReview);
        $editForm = $this->createForm('AnimeBundle\Form\EpisodeReviewType', $episodeReview);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('episodereview_edit', array('id' => $episodeReview->getId()));
        }

        return $this->render('episodereview/edit.html.twig', array(
            'episodeReview' => $episodeReview,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }*/
    /**
     * Deletes a episodeReview entity.
     *
     * @Route("/{id}", name="episodereview_delete")
     * @Method("DELETE")
     */
    /*public function deleteAction(Request $request, EpisodeReview $episodeReview)
    {
        $form = $this->createDeleteForm($episodeReview);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($episodeReview);
            $em->flush($episodeReview);
        }

        return $this->redirectToRoute('episodereview_index');
    }*/

    /**
     * Creates a form to delete a episodeReview entity.
     *
     * @param EpisodeReview $episodeReview The episodeReview entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(EpisodeReview $episodeReview)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('episodereview_delete', array('id' => $episodeReview->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
