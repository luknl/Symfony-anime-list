<?php

namespace AnimeBundle\Controller;

use AnimeBundle\Entity\AnimeReview;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

/**
 * Animereview controller.
 *
 * @Route("animereview")
 */
class AnimeReviewController extends Controller
{
    /**
     * Creates a new animeReview entity.
     * @param Request $request
     *
     * @Route("/new", name="animereview_new")
     * @Method({"GET", "POST"})
     * @return \Symfony\Component\HttpFoundation\RedirectResponse|\Symfony\Component\HttpFoundation\Response
     */
    public function newAction(Request $request)
    {
        if ($this->getUser()) {
            $animeReview = new Animereview();

            $animeid = $request->query->get('anime');
            if (!$animeid) {
                throw $this->createNotFoundException('No route found');
            }
            $animeReview->setUser($this->getUser());

            $form = $this->createForm('AnimeBundle\Form\AnimeReviewType', $animeReview, array(
                'anime' => $animeid
            ));
            $form->handleRequest($request);

            $repository = $this->getDoctrine()->getManager()->getRepository('AnimeBundle:Anime');
            $anime = $repository->findById($animeid);

            if ($form->isSubmitted() && $form->isValid()) {
                $em = $this->getDoctrine()->getManager();
                $em->persist($animeReview);
                $em->flush($animeReview);

                return $this->redirectToRoute('anime_show', array('id' => $animeReview->getAnime()->getId()));
            }

            return $this->render('animereview/new.html.twig', array(
                'animeReview' => $animeReview,
                'form' => $form->createView(),
                'anime' => $anime,
            ));
        } else {
            return $this->redirectToRoute('fos_user_security_login');
        }
    }

    /**
     * Displays a form to edit an existing animeReview entity.
     * @Route("/{id}/edit", name="animereview_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, AnimeReview $animeReview)
    {
        if ($animeReview->getUser() == $this->getUser()) {
            $deleteForm = $this->createDeleteForm($animeReview);

            $animeid = $animeReview->getAnime()->getId();

            $editForm = $this->createForm('AnimeBundle\Form\AnimeReviewType', $animeReview, array(
                'anime' => $animeid
            ));
            $editForm->handleRequest($request);

            if ($editForm->isSubmitted() && $editForm->isValid()) {
                $this->getDoctrine()->getManager()->flush();

                return $this->redirectToRoute('anime_show', array('id' => $animeid));
            }

            return $this->render(
                'animereview/edit.html.twig',
                array(
                    'animeReview' => $animeReview,
                    'edit_form' => $editForm->createView(),
                    'delete_form' => $deleteForm->createView(),
                )
            );
        } else {
            return $this->redirectToRoute('anime_show', array('id' => $animeReview->getAnime()->getId()));
        }
    }

    /**
     * Deletes a animeReview entity.
     *
     * @Route("/{id}", name="animereview_delete")
     * @Method("DELETE")
     * @param Request $request
     * @param AnimeReview $animeReview
     * @return \Symfony\Component\HttpFoundation\RedirectResponse
     */
    public function deleteAction(Request $request, AnimeReview $animeReview)
    {
        $animeid = $animeReview->getAnime()->getId();

        $form = $this->createDeleteForm($animeReview);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($animeReview);
            $em->flush($animeReview);
        }

        return $this->redirectToRoute('anime_show', array('id' => $animeid));
    }

    /**
     * Creates a form to delete a animeReview entity.
     *
     * @param AnimeReview $animeReview The animeReview entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AnimeReview $animeReview)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('animereview_delete', array('id' => $animeReview->getId())))
            ->setMethod('DELETE')
            ->getForm()
            ;
    }
}
