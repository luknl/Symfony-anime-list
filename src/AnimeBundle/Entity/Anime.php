<?php

namespace AnimeBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Anime
 *
 * @ORM\Table(name="anime")
 * @ORM\Entity(repositoryClass="AnimeBundle\Repository\AnimeRepository")
 */
class Anime
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
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=255)
     */
    private $name;

    /**
     * @ORM\ManyToOne(targetEntity="AnimeType")
     * @ORM\JoinColumn(name="type_id", referencedColumnName="id", nullable=false)
     */
    private $type;

    /**
     * @ORM\ManyToOne(targetEntity="AnimeGenre")
     * @ORM\JoinColumn(name="genre_id", referencedColumnName="id", nullable=false)
     */
    private $genre;

    /**
     * @var string
     *
     * @ORM\Column(name="picture", type="string", length=255)
     */
    private $picture;

    /**
     * @var string
     *
     * @ORM\Column(name="status", type="string", length=255)
     */
    private $status;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="aired", type="datetime")
     */
    private $aired;

    /**
     * @var string
     *
     * @ORM\Column(name="producers", type="string", length=255, nullable=true)
     */
    private $producers;

    /**
     * @var string
     *
     * @ORM\Column(name="licensors", type="string", length=255, nullable=true)
     */
    private $licensors;

    /**
     * @var string
     *
     * @ORM\Column(name="studios", type="string", length=255, nullable=true)
     */
    private $studios;

    /**
     * @var string
     *
     * @ORM\Column(name="source", type="string", length=255, nullable=true)
     */
    private $source;

    /**
     * @var int
     *
     * @ORM\Column(name="duration", type="integer")
     */
    private $duration;

    /**
     * @var string
     *
     * @ORM\Column(name="synopsis", type="string", length=255)
     */
    private $synopsis;

    /**
     * @var string
     *
     * @ORM\Column(name="background", type="string", length=255, nullable=true)
     */
    private $background;

    /**
     * @var string
     *
     * @ORM\Column(name="rating", type="string", length=255, nullable=true)
     */
    private $rating;


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
     * Set name
     *
     * @param string $name
     *
     * @return Anime
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name
     *
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set type
     *
     * @param \stdClass $type
     *
     * @return Anime
     */
    public function setType($type)
    {
        $this->type = $type;

        return $this;
    }

    /**
     * Get type
     *
     * @return \stdClass
     */
    public function getType()
    {
        return $this->type;
    }

    /**
     * Set genre
     *
     * @param \stdClass $genre
     *
     * @return Anime
     */
    public function setGenre($genre)
    {
        $this->genre = $genre;

        return $this;
    }

    /**
     * Get genre
     *
     * @return \stdClass
     */
    public function getGenre()
    {
        return $this->genre;
    }

    /**
     * Set picture
     *
     * @param string $picture
     *
     * @return Anime
     */
    public function setPicture($picture)
    {
        $this->picture = $picture;

        return $this;
    }

    /**
     * Get picture
     *
     * @return string
     */
    public function getPicture()
    {
        return $this->picture;
    }

    /**
     * Set status
     *
     * @param string $status
     *
     * @return Anime
     */
    public function setStatus($status)
    {
        $this->status = $status;

        return $this;
    }

    /**
     * Get status
     *
     * @return string
     */
    public function getStatus()
    {
        return $this->status;
    }

    /**
     * Set aired
     *
     * @param \DateTime $aired
     *
     * @return Anime
     */
    public function setAired($aired)
    {
        $this->aired = $aired;

        return $this;
    }

    /**
     * Get aired
     *
     * @return \DateTime
     */
    public function getAired()
    {
        return $this->aired;
    }

    /**
     * Set producers
     *
     * @param string $producers
     *
     * @return Anime
     */
    public function setProducers($producers)
    {
        $this->producers = $producers;

        return $this;
    }

    /**
     * Get producers
     *
     * @return string
     */
    public function getProducers()
    {
        return $this->producers;
    }

    /**
     * Set licensors
     *
     * @param string $licensors
     *
     * @return Anime
     */
    public function setLicensors($licensors)
    {
        $this->licensors = $licensors;

        return $this;
    }

    /**
     * Get licensors
     *
     * @return string
     */
    public function getLicensors()
    {
        return $this->licensors;
    }

    /**
     * Set studios
     *
     * @param string $studios
     *
     * @return Anime
     */
    public function setStudios($studios)
    {
        $this->studios = $studios;

        return $this;
    }

    /**
     * Get studios
     *
     * @return string
     */
    public function getStudios()
    {
        return $this->studios;
    }

    /**
     * Set source
     *
     * @param string $source
     *
     * @return Anime
     */
    public function setSource($source)
    {
        $this->source = $source;

        return $this;
    }

    /**
     * Get source
     *
     * @return string
     */
    public function getSource()
    {
        return $this->source;
    }

    /**
     * Set duration
     *
     * @param integer $duration
     *
     * @return Anime
     */
    public function setDuration($duration)
    {
        $this->duration = $duration;

        return $this;
    }

    /**
     * Get duration
     *
     * @return int
     */
    public function getDuration()
    {
        return $this->duration;
    }

    /**
     * Set synopsis
     *
     * @param string $synopsis
     *
     * @return Anime
     */
    public function setSynopsis($synopsis)
    {
        $this->synopsis = $synopsis;

        return $this;
    }

    /**
     * Get synopsis
     *
     * @return string
     */
    public function getSynopsis()
    {
        return $this->synopsis;
    }

    /**
     * Set background
     *
     * @param string $background
     *
     * @return Anime
     */
    public function setBackground($background)
    {
        $this->background = $background;

        return $this;
    }

    /**
     * Get background
     *
     * @return string
     */
    public function getBackground()
    {
        return $this->background;
    }

    /**
     * Set rating
     *
     * @param string $rating
     *
     * @return Anime
     */
    public function setRating($rating)
    {
        $this->rating = $rating;

        return $this;
    }

    /**
     * Get rating
     *
     * @return string
     */
    public function getRating()
    {
        return $this->rating;
    }
}
