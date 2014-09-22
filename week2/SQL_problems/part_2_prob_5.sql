SELECT galleries.id, COUNT(*) AS  most_number_of_images
FROM images
JOIN galleries
  ON images.gallery_id = galleries.id
GROUP BY galleries.id
LIMIT 1;
