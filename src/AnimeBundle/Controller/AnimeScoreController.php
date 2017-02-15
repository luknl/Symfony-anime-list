<?php

namespace AnimeBundle\Controller;

use AnimeBundle\Entity\AnimeScore;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;use Symfony\Component\HttpFoundation\Request;

/**
 * Animescore controller.
 *
 * @Route("animescore")
 */
class AnimeScoreController extends Controller
{
    /**
     * Lists all animeScore entities.
     *
     * @Route("/", name="animescore_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $animeScores = $em->getRepository('AnimeBundle:AnimeScore')->findAll();

        $animeName = [];
        foreach($animeScores as $animeScore) {
            $animeName[$animeScore->getId()] = $animeScore->getAnime()->getName();
        }

        return $this->render('animescore/index.html.twig', array(
            'animeScores' => $animeScores,
            'animeName' => $animeName,
        ));
    }

    /**
     * Creates a new animeScore entity.
     *
     * @Route("/new", name="animescore_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $animeScore = new Animescore();
        $form = $this->createForm('AnimeBundle\Form\AnimeScoreType', $animeScore);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($animeScore);
            $em->flush($animeScore);

            return $this->redirectToRoute('animescore_show', array('id' => $animeScore->getId()));
        }

        return $this->render('animescore/new.html.twig', array(
            'animeScore' => $animeScore,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a animeScore entity.
     *
     * @Route("/{id}", name="animescore_show")
     * @Method("GET")
     */
    public function showAction(AnimeScore $animeScore)
    {
        $deleteForm = $this->createDeleteForm($animeScore);

        $animeName = $animeScore->getAnime()->getName();

        return $this->render('animescore/show.html.twig', array(
            'animeScore' => $animeScore,
            'animeName' => $animeName,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing animeScore entity.
     *
     * @Route("/{id}/edit", name="animescore_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, AnimeScore $animeScore)
    {
        $deleteForm = $this->createDeleteForm($animeScore);
        $editForm = $this->createForm('AnimeBundle\Form\AnimeScoreType', $animeScore);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('animescore_edit', array('id' => $animeScore->getId()));
        }

        return $this->render('animescore/edit.html.twig', array(
            'animeScore' => $animeScore,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a animeScore entity.
     *
     * @Route("/{id}", name="animescore_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, AnimeScore $animeScore)
    {
        $form = $this->createDeleteForm($animeScore);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($animeScore);
            $em->flush($animeScore);
        }

        return $this->redirectToRoute('animescore_index');
    }

    /**
     * Creates a form to delete a animeScore entity.
     *
     * @param AnimeScore $animeScore The animeScore entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AnimeScore $animeScore)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('animescore_delete', array('id' => $animeScore->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
