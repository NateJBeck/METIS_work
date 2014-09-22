SELECT galleries.id, COUNT(*) AS number_of_images
FROM images
JOIN galleries
  ON images.gallery_id = galleries.id
GROUP BY galleries.id
ORDER BY galleries.id
