-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2020 a las 07:21:12
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prueba`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `batallon`
--

CREATE TABLE `batallon` (
  `idbatallon` int(100) NOT NULL,
  `nombredelBatallon` varchar(100) NOT NULL,
  `zonaMilitar` varchar(100) NOT NULL,
  `numerodeElementos` int(100) NOT NULL,
  `numerodeVehiculos` int(100) NOT NULL,
  `especialidad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `batallon`
--

INSERT INTO `batallon` (`idbatallon`, `nombredelBatallon`, `zonaMilitar`, `numerodeElementos`, `numerodeVehiculos`, `especialidad`) VALUES
(1, 'Batallon 105', 'zona militar 24', 25, 15, 'infanteria'),
(1, 'Batallon 104', 'zona militar 22', 100, 50, 'infanteria'),
(2, 'Batallon 104', 'zona militar 22', 100, 50, 'caballeria'),
(3, 'Batallon 104', 'zona militar 26', 100, 50, 'infanteria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caballosmilitares`
--

CREATE TABLE `caballosmilitares` (
  `idcaballos` int(100) NOT NULL,
  `nombredecaballo` varchar(100) NOT NULL,
  `raza` varchar(100) NOT NULL,
  `especialidad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `caballosmilitares`
--

INSERT INTO `caballosmilitares` (`idcaballos`, `nombredecaballo`, `raza`, `especialidad`) VALUES
(1, 'tornado', 'español', 'entrenamiento'),
(2, 'principe', 'español', 'entrenamiento'),
(3, 'rey', 'frison', 'entrenamiento');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursosmilitares`
--

CREATE TABLE `cursosmilitares` (
  `idCursos` int(100) NOT NULL,
  `nombredeCurso` varchar(100) NOT NULL,
  `duraciondelCurso` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cursosmilitares`
--

INSERT INTO `cursosmilitares` (`idCursos`, `nombredeCurso`, `duraciondelCurso`) VALUES
(1, 'fuerzas especiales', '9 meses'),
(2, 'basico', '6 meses');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipomilitar`
--

CREATE TABLE `equipomilitar` (
  `idequipomilitar` int(100) NOT NULL,
  `tipodeCasco` varchar(100) NOT NULL,
  `tipodeChaleco` varchar(100) NOT NULL,
  `tipodeBotas` varchar(100) NOT NULL,
  `tipodeUniforme` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `equipomilitar`
--

INSERT INTO `equipomilitar` (`idequipomilitar`, `tipodeCasco`, `tipodeChaleco`, `tipodeBotas`, `tipodeUniforme`) VALUES
(1, 'mk', 'IIA', 'filichan', 'desertico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escuadron`
--

CREATE TABLE `escuadron` (
  `nombredeEscuadron` varchar(100) NOT NULL,
  `sargento` varchar(100) NOT NULL,
  `fusilero` varchar(100) NOT NULL,
  `granadero` varchar(100) NOT NULL,
  `ametralladora` varchar(100) NOT NULL,
  `rebastecedor` varchar(100) NOT NULL,
  `medico` varchar(100) NOT NULL,
  `idescuadron` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `escuadron`
--

INSERT INTO `escuadron` (`nombredeEscuadron`, `sargento`, `fusilero`, `granadero`, `ametralladora`, `rebastecedor`, `medico`, `idescuadron`) VALUES
('null', 'Carlos', 'Juan', 'Marcos', 'Charlie', 'Diego', 'Jose', 1),
('fenix', 'Carlos', 'Juan', 'Marcos', 'Charlie', 'Diego', 'Jose', 1),
('fenix', 'Carlos', 'Juan', 'Marcos', 'Charlie', 'Diego', 'Jose', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficiales`
--

CREATE TABLE `oficiales` (
  `idoficial` int(100) NOT NULL,
  `nombreOficial` varchar(100) NOT NULL,
  `rangodeOficial` varchar(100) NOT NULL,
  `ramaMilitar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `oficiales`
--

INSERT INTO `oficiales` (`idoficial`, `nombreOficial`, `rangodeOficial`, `ramaMilitar`) VALUES
(1, 'Jhon', 'teniente', 'infanteria'),
(1, 'Carlos', 'capitan', 'infanteria'),
(1, 'Marcos', 'capitan', 'caballeria'),
(2, 'Marcos', 'capitan', 'caballeria'),
(3, 'Marcelo', 'teniente', 'caballeria');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operaciones`
--

CREATE TABLE `operaciones` (
  `nombredeOperacion` varchar(100) NOT NULL,
  `ubicacion` varchar(100) NOT NULL,
  `duracionoperacion` varchar(100) NOT NULL,
  `tipodeElementos` varchar(100) NOT NULL,
  `cantidaddeElementos` varchar(100) NOT NULL,
  `idoperaciones` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `operaciones`
--

INSERT INTO `operaciones` (`nombredeOperacion`, `ubicacion`, `duracionoperacion`, `tipodeElementos`, `cantidaddeElementos`, `idoperaciones`) VALUES
('cisne negro', 'morelos', 'null', 'infanteria', '20 elementos', 1),
('marzo negro', 'culiacan', 'null', 'artilleria', '50 elementos', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perrosmilitares`
--

CREATE TABLE `perrosmilitares` (
  `idperros` int(100) NOT NULL,
  `nombredeperro` varchar(100) NOT NULL,
  `raza` varchar(100) NOT NULL,
  `especialidad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `perrosmilitares`
--

INSERT INTO `perrosmilitares` (`idperros`, `nombredeperro`, `raza`, `especialidad`) VALUES
(1, 'rocky', 'labrador', 'rescastista');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soldado`
--

CREATE TABLE `soldado` (
  `nombre` varchar(100) NOT NULL,
  `apellidoP` varchar(100) NOT NULL,
  `apellidoM` varchar(100) NOT NULL,
  `matricula` varchar(100) NOT NULL,
  `batallon` varchar(100) NOT NULL,
  `ramaMilitar` varchar(100) NOT NULL,
  `especialidad` varchar(100) NOT NULL,
  `idsoldado` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `soldado`
--

INSERT INTO `soldado` (`nombre`, `apellidoP`, `apellidoM`, `matricula`, `batallon`, `ramaMilitar`, `especialidad`, `idsoldado`) VALUES
('Nadia', 'hernandez', 'Perez', 'jsdjhfd', 'Batallon 105', 'infanteria', 'comunicaciones', 1),
('Nadia', 'hernandez', 'Perez', 'jsdjhfd', 'Batallon 105', 'infanteria', 'comunicaciones', 2),
('Maria', 'Ocampo', 'Gomez', 'jhgfdjhfdh', 'Batallon 106', 'caballeria', 'conductor', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiposdearmas`
--

CREATE TABLE `tiposdearmas` (
  `tipodeModelo` varchar(100) NOT NULL,
  `tipodeMunicion` varchar(100) NOT NULL,
  `tipodeAlcance` varchar(100) NOT NULL,
  `tipodeCalibre` varchar(100) NOT NULL,
  `idarmas` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tiposdearmas`
--

INSERT INTO `tiposdearmas` (`tipodeModelo`, `tipodeMunicion`, `tipodeAlcance`, `tipodeCalibre`, `idarmas`) VALUES
('ak-47', 'incendaria', 'medio', '7 x 39 mm', 1),
('ak-47', 'rasteadoras', 'largo', '7 x 39 mm', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ubicacion`
--

CREATE TABLE `ubicacion` (
  `estado` varchar(100) NOT NULL,
  `zonaMilitar` varchar(100) NOT NULL,
  `regionMilitar` varchar(100) NOT NULL,
  `idubicacion` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ubicacion`
--

INSERT INTO `ubicacion` (`estado`, `zonaMilitar`, `regionMilitar`, `idubicacion`) VALUES
('morelos', 'zona militar 13', 'region v', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculosaereos`
--

CREATE TABLE `vehiculosaereos` (
  `aviondeAtaque` varchar(100) NOT NULL,
  `aviondeBombardero` varchar(100) NOT NULL,
  `aviondeTransporte` varchar(100) NOT NULL,
  `aviondeReconocimiento` varchar(100) NOT NULL,
  `avionCaza` varchar(100) NOT NULL,
  `idvehiculosaereos` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vehiculosaereos`
--

INSERT INTO `vehiculosaereos` (`aviondeAtaque`, `aviondeBombardero`, `aviondeTransporte`, `aviondeReconocimiento`, `avionCaza`, `idvehiculosaereos`) VALUES
('F-15E Strike Eagle', 'Tu-160', ' KC-135 Stratotanker', ' E-2C Hawkeye ', 'Su-27', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculosterrestre`
--

CREATE TABLE `vehiculosterrestre` (
  `camionesMilitares` varchar(100) NOT NULL,
  `carrosdeCombate` varchar(100) NOT NULL,
  `carrosBlindaos` varchar(100) NOT NULL,
  `carrosMultiproposito` varchar(100) NOT NULL,
  `idvehiculosterrestre` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vehiculosterrestre`
--

INSERT INTO `vehiculosterrestre` (`camionesMilitares`, `carrosdeCombate`, `carrosBlindaos`, `carrosMultiproposito`, `idvehiculosterrestre`) VALUES
('Kynos Aljaba', 'AMX-30', 'Grizzly APC', 'Kojak', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
