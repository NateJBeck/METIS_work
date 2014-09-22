SELECT COUNT(*) AS count_of_all_sushi_images
FROM images
JOIN galleries
  ON images.gallery_id = galleries.id
WHERE images.name ILIKE '%sushi%';

