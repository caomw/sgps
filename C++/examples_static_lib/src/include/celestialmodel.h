/*
 * celestialmodel.h
 * Celestial Model Class' Header
 * Part of the SGPS Project. http://www.sgpsproject.org
 * Copyright (C) 2012 Javier V. Gómez
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.

 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.

 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

#ifndef CELESTIALMODEL_H_
#define CELESTIALMODEL_H_

#include "day.h"
#include "coordinates.h"

class CelestialModel {
public:
	CelestialModel();
	virtual ~CelestialModel();

	static Coordinates ForwardCelestialModel(Day &);

private:
	//AstroAlg    basicAlg; Used without objects.
};

#endif /* CELESTIALMODEL_H_ */
