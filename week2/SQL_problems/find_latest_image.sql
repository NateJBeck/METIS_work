SELECT galleries.id, MAX(images.id)
FROM galleries 
JOIN images ON images.gallery_id = galleries.id
GROUP BY galleries.id;
