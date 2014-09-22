SELECT galleries.name AS has_image_name_Grumpy
FROM images 
JOIN galleries
  ON images.gallery_id = galleries.id
WHERE images.name ILIKE '%grumpy%';
