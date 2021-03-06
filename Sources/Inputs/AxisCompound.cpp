#include "AxisCompound.hpp"

#include "Maths/Maths.hpp"

namespace acid
{
	AxisCompound::AxisCompound(const std::vector<IAxis *> &axes) :
		m_axes(std::vector<std::unique_ptr<IAxis>>())
	{
		for (auto &axis : axes)
		{
			m_axes.emplace_back(axis);
		}
	}

	float AxisCompound::GetAmount() const
	{
		float result = 0.0f;

		for (auto &axis : m_axes)
		{
			result += axis->GetAmount();
		}

		return std::clamp(result, -1.0f, 1.0f);
	}
}
