USE hack;
INSERT INTO `hack`.`donador` (`donador_id`, `nombre`, `paterno`, `materno`, `curp`, `pass`) VALUES ('2', 'juan carlos', 'calixto', 'lópez', '123456789', '123456789');
INSERT INTO `hack`.`localizacion` (`localizacion_id`, `latitud`, `longitud`, `donador_id`) VALUES ('2', '32.8029959', '-99.221491', '1');
INSERT INTO `hack`.`donacion` (`donacion_id`, `donador_id`, `organo_id`) VALUES ('2', '2', '2');

