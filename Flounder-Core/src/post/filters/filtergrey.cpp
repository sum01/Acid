#include "filtergrey.hpp"

namespace flounder
{
	filtergrey::filtergrey() :
		ipostfilter("filterGrey", "res/shaders/filters/grey.frag.spv")
	{
	}

	filtergrey::~filtergrey()
	{
	}

	void filtergrey::storeValues()
	{
	}
}
