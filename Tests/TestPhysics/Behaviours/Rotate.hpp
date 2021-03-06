#pragma once

#include <Objects/IComponent.hpp>
#include <Maths/Vector3.hpp>

using namespace acid;

namespace test
{
	class Rotate :
		public IComponent
	{
	private:
		Vector3 m_direction;
		bool m_test;
	public:
		explicit Rotate(const Vector3 &direction = Vector3::ZERO, const bool &test = false);

		void Start() override;

		void Update() override;

		void Decode(const Metadata &metadata) override;

		void Encode(Metadata &metadata) const override;
	};
}
