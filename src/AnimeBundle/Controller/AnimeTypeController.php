<?php

namespace AnimeBundle\Controller;

use AnimeBundle\Entity\AnimeType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;use Symfony\Component\HttpFoundation\Request;

/**
 * Animetype controller.
 *
 * @Route("animetype")
 */
class AnimeTypeController extends Controller
{
    /**
     * Lists all animeType entities.
     *
     * @Route("/", name="animetype_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $animeTypes = $em->getRepository('AnimeBundle:AnimeType')->findAll();

        return $this->render('animetype/index.html.twig', array(
            'animeTypes' => $animeTypes,
        ));
    }

    /**
     * Creates a new animeType entity.
     *
     * @Route("/new", name="animetype_new")
     * @Method({"GET", "POST"})
     */
    /*public function newAction(Request $request)
    {
        $animeType = new Animetype();
        $form = $this->createForm('AnimeBundle\Form\AnimeTypeType', $animeType);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($animeType);
            $em->flush($animeType);

            return $this->redirectToRoute('animetype_show', array('id' => $animeType->getId()));
        }

        return $this->render('animetype/new.html.twig', array(
            'animeType' => $animeType,
            'form' => $form->createView(),
        ));
    }*/

    /**
     * Finds and displays a animeType entity.
     *
     * @Route("/{id}", name="animetype_show")
     * @Method("GET")
     */
    public function showAction(AnimeType $animeType)
    {
        #$deleteForm = $this->createDeleteForm($animeType);

        return $this->render('animetype/show.html.twig', array(
            'animeType' => $animeType,
            #'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing animeType entity.
     *
     * @Route("/{id}/edit", name="animetype_edit")
     * @Method({"GET", "POST"})
     */
    /*public function editAction(Request $request, AnimeType $animeType)
    {
        $deleteForm = $this->createDeleteForm($animeType);
        $editForm = $this->createForm('AnimeBundle\Form\AnimeTypeType', $animeType);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('animetype_edit', array('id' => $animeType->getId()));
        }

        return $this->render('animetype/edit.html.twig', array(
            'animeType' => $animeType,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }*/

    /**
     * Deletes a animeType entity.
     *
     * @Route("/{id}", name="animetype_delete")
     * @Method("DELETE")
     */
    /*public function deleteAction(Request $request, AnimeType $animeType)
    {
        $form = $this->createDeleteForm($animeType);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($animeType);
            $em->flush($animeType);
        }

        return $this->redirectToRoute('animetype_index');
    }*/

    /**
     * Creates a form to delete a animeType entity.
     *
     * @param AnimeType $animeType The animeType entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AnimeType $animeType)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('animetype_delete', array('id' => $animeType->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
