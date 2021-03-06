SELECT galleries.name AS has_most_images
FROM images
JOIN galleries
  ON images.gallery_id = galleries.id
GROUP BY galleries.id
ORDER BY COUNT(images.id) DESC
LIMIT 1;
