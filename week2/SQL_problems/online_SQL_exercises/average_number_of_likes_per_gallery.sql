SELECT galleries.id, AVG(images.likes)
FROM images
JOIN galleries 
  ON images.gallery_id = galleries.id
GROUP BY galleries.id
ORDER BY galleries.id; 

--selects 2 things to display
--joins images and galleries
--groups them by images.gallery_id (which equals galleries.id)
--group by gallery ID lists them by gallery.id, ORDER BY makes them go in order
--need to select galleries.id because its in the GROUP by function
--
