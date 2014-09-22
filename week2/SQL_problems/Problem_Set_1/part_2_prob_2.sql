SELECT galleries.id, MIN(images.id)
FROM galleries 
JOIN images 
   ON images.gallery_id = galleries.id
GROUP BY galleries.id
ORDER BY MIN(images.id)
LIMIT 3;

