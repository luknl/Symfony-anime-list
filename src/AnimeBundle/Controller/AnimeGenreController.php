<?php

namespace AnimeBundle\Controller;

use AnimeBundle\Entity\AnimeGenre;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;use Symfony\Component\HttpFoundation\Request;

/**
 * Animegenre controller.
 *
 * @Route("animegenre")
 */
class AnimeGenreController extends Controller
{
    /**
     * Lists all animeGenre entities.
     *
     * @Route("/", name="animegenre_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $animeGenres = $em->getRepository('AnimeBundle:AnimeGenre')->findAll();

        return $this->render('animegenre/index.html.twig', array(
            'animeGenres' => $animeGenres,
        ));
    }



    /**
     * Creates a new animeGenre entity.
     *
     * @Route("/new", name="animegenre_new")
     * @Method({"GET", "POST"})
     */
    /*public function newAction(Request $request)
    {
        $animeGenre = new Animegenre();
        $form = $this->createForm('AnimeBundle\Form\AnimeGenreType', $animeGenre);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($animeGenre);
            $em->flush($animeGenre);

            return $this->redirectToRoute('animegenre_show', array('id' => $animeGenre->getId()));
        }

        return $this->render('animegenre/new.html.twig', array(
            'animeGenre' => $animeGenre,
            'form' => $form->createView(),
        ));
    }*/

    /**
     * Finds and displays a animeGenre entity.
     *
     * @Route("/{id}", name="animegenre_show")
     * @Method("GET")
     */
    public function showAction(AnimeGenre $animeGenre)
    {
        #$deleteForm = $this->createDeleteForm($animeGenre);
        $em = $this->getDoctrine()->getManager();
        $animeGenres = $em->getRepository('AnimeBundle:AnimeGenre')->findAll();
        $animes = $em->getRepository('AnimeBundle:Anime')->findByGenre( $animeGenre->getId() );;

        return $this->render('animegenre/show.html.twig', array(
            'genre' => $animeGenre,
            'animeGenres' => $animeGenres,
            'animes' => $animes,
            #'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing animeGenre entity.
     *
     * @Route("/{id}/edit", name="animegenre_edit")
     * @Method({"GET", "POST"})
     */
    /*public function editAction(Request $request, AnimeGenre $animeGenre)
    {
        $deleteForm = $this->createDeleteForm($animeGenre);
        $editForm = $this->createForm('AnimeBundle\Form\AnimeGenreType', $animeGenre);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('animegenre_edit', array('id' => $animeGenre->getId()));
        }

        return $this->render('animegenre/edit.html.twig', array(
            'animeGenre' => $animeGenre,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }*/

    /**
     * Deletes a animeGenre entity.
     *
     * @Route("/{id}", name="animegenre_delete")
     * @Method("DELETE")
     */
    /*public function deleteAction(Request $request, AnimeGenre $animeGenre)
    {
        $form = $this->createDeleteForm($animeGenre);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($animeGenre);
            $em->flush($animeGenre);
        }

        return $this->redirectToRoute('animegenre_index');
    }*/

    /**
     * Creates a form to delete a animeGenre entity.
     *
     * @param AnimeGenre $animeGenre The animeGenre entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(AnimeGenre $animeGenre)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('animegenre_delete', array('id' => $animeGenre->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
