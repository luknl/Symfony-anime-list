<?php

namespace AnimeBundle\Controller;

use AnimeBundle\Entity\EpisodeScore;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

/**
 * Episodescore controller.
 *
 * @Route("episodescore")
 */
class EpisodeScoreController extends Controller
{
    /**
     * Lists all episodeScore entities.
     *
     * @Route("/", name="episodescore_index")
     * @Method("GET")
     */
    /*public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $episodeScores = $em->getRepository('AnimeBundle:EpisodeScore')->findAll();

        $episodeName = [];
        foreach ($episodeScores as $episodeScore) {
            $episodeName[$episodeScore->getId()] = $episodeScore->getEpisode()->getName();
        }

        return $this->render('episodescore/index.html.twig', array(
            'episodeScores' => $episodeScores,
            'episodeName' => $episodeName,
        ));
    }*/

    /**
     * Creates a new episodeScore entity.
     *
     * @Route("/new", name="episodescore_new")
     * @Method({"GET", "POST"})
     */
    /*public function newAction(Request $request)
    {
        $episodeScore = new Episodescore();
        $form = $this->createForm('AnimeBundle\Form\EpisodeScoreType', $episodeScore);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($episodeScore);
            $em->flush($episodeScore);

            return $this->redirectToRoute('episodescore_show', array('id' => $episodeScore->getId()));
        }

        return $this->render('episodescore/new.html.twig', array(
            'episodeScore' => $episodeScore,
            'form' => $form->createView(),
        ));
    }*/

    /**
     * Finds and displays a episodeScore entity.
     *
     * @Route("/{id}", name="episodescore_show")
     * @Method("GET")
     */
    /*public function showAction(EpisodeScore $episodeScore)
    {
        #$deleteForm = $this->createDeleteForm($episodeScore);

        $episodeName = $episodeScore->getEpisode()->getName();

        return $this->render('episodescore/show.html.twig', array(
            'episodeScore' => $episodeScore,
            'episodeName' => $episodeName,
            #'delete_form' => $deleteForm->createView(),
        ));
    }*/

    /**
     * Displays a form to edit an existing episodeScore entity.
     *
     * @Route("/{id}/edit", name="episodescore_edit")
     * @Method({"GET", "POST"})
     */
    /*public function editAction(Request $request, EpisodeScore $episodeScore)
    {
        $deleteForm = $this->createDeleteForm($episodeScore);
        $editForm = $this->createForm('AnimeBundle\Form\EpisodeScoreType', $episodeScore);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('episodescore_edit', array('id' => $episodeScore->getId()));
        }

        return $this->render('episodescore/edit.html.twig', array(
            'episodeScore' => $episodeScore,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }*/

    /**
     * Deletes a episodeScore entity.
     *
     * @Route("/{id}", name="episodescore_delete")
     * @Method("DELETE")
     */
    /*public function deleteAction(Request $request, EpisodeScore $episodeScore)
    {
        $form = $this->createDeleteForm($episodeScore);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($episodeScore);
            $em->flush($episodeScore);
        }

        return $this->redirectToRoute('episodescore_index');
    }*/

    /**
     * Creates a form to delete a episodeScore entity.
     *
     * @param EpisodeScore $episodeScore The episodeScore entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    /*private function createDeleteForm(EpisodeScore $episodeScore)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('episodescore_delete', array('id' => $episodeScore->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }*/
}
