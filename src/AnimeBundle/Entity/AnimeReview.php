<?php

namespace AnimeBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * AnimeReview
 *
 * @ORM\Table(name="anime_review")
 * @ORM\Entity(repositoryClass="AnimeBundle\Repository\AnimeReviewRepository")
 */
class AnimeReview
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    public function __construct()
    {
        $this->created = new \DateTime();
    }

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
     * @var string
     *
     * @ORM\Column(name="value", type="string", length=255)
     */
    private $value;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="created", type="datetime")
     */
    private $created;


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
     * @return AnimeReview
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
     * @return AnimeReview
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
     * Set value
     *
     * @param string $value
     *
     * @return AnimeReview
     */
    public function setValue($value)
    {
        $this->value = $value;

        return $this;
    }

    /**
     * Get value
     *
     * @return string
     */
    public function getValue()
    {
        return $this->value;
    }

    /**
     * Set created
     *
     * @param \DateTime $created
     *
     * @return AnimeReview
     */
    public function setCreated($created)
    {
        $this->created = $created;

        return $this;
    }

    /**
     * Get created
     *
     * @return \DateTime
     */
    public function getCreated()
    {
        return $this->created;
    }
}
