SELECT images.name, galleries.name 
FROM images
JOIN galleries
ON images.gallery_id = galleries.id
