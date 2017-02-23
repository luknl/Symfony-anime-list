<?php

namespace AnimeBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * UserHasAnimes
 *
 * @ORM\Table(name="user_has_animes")
 * @ORM\Entity(repositoryClass="AnimeBundle\Repository\UserHasAnimesRepository")
 */
class UserHasAnimes
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity="User")
     * @ORM\JoinColumn(name="user_id", referencedColumnName="id", nullable=false)
     */
    private $user;

    /**
     * @ORM\ManyToOne(targetEntity="Anime")
     * @ORM\JoinColumn(name="anime_id", referencedColumnName="id", nullable=false)
     */
    private $anime;

    /**
     * @var bool
     *
     * @ORM\Column(name="favori", type="boolean")
     */
    private $favori;


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set user
     *
     * @param \stdClass $user
     *
     * @return UserHasAnimes
     */
    public function setUser($user)
    {
        $this->user = $user;

        return $this;
    }

    /**
     * Get user
     *
     * @return \stdClass
     */
    public function getUser()
    {
        return $this->user;
    }

    /**
     * Set anime
     *
     * @param \stdClass $anime
     *
     * @return UserHasAnimes
     */
    public function setAnime($anime)
    {
        $this->anime = $anime;

        return $this;
    }

    /**
     * Get anime
     *
     * @return \stdClass
     */
    public function getAnime()
    {
        return $this->anime;
    }

    /**
     * Set favori
     *
     * @param boolean $favori
     *
     * @return UserHasAnimes
     */
    public function setFavori($favori)
    {
        $this->favori = $favori;

        return $this;
    }

    /**
     * Get favori
     *
     * @return bool
     */
    public function getFavori()
    {
        return $this->favori;
    }
}

