<?php

namespace AnimeBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * AnimeScore
 *
 * @ORM\Table(name="anime_score")
 * @ORM\Entity(repositoryClass="AnimeBundle\Repository\AnimeScoreRepository")
 */
class AnimeScore
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
     * @ORM\ManyToOne(targetEntity="Anime")
     * @ORM\JoinColumn(name="anime_id", referencedColumnName="id", nullable=false)
     */
    private $anime;

    /**
     * @ORM\ManyToOne(targetEntity="User")
     * @ORM\JoinColumn(name="user_id", referencedColumnName="id", nullable=false)
     */
    private $user;

    /**
     * @var int
     *
     * @ORM\Column(name="value", type="integer")
     */
    private $value;


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
     * Set anime
     *
     * @param \stdClass $anime
     *
     * @return AnimeScore
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
     * Set user
     *
     * @param \stdClass $user
     *
     * @return AnimeScore
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
     * Set value
     *
     * @param integer $value
     *
     * @return AnimeScore
     */
    public function setValue($value)
    {
        $this->value = $value;

        return $this;
    }

    /**
     * Get value
     *
     * @return int
     */
    public function getValue()
    {
        return $this->value;
    }
}
