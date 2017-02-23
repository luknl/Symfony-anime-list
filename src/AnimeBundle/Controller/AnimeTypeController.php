<?php

namespace AnimeBundle\Controller;

use AnimeBundle\Entity\AnimeType;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

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
