// Copyright 2016-2021 Scarlet-OpenGL / Red-Scarlet. All rights reserved.
// OpenGLComponent.h 03/04/2021 - Component Struct.
#pragma once

#include <ScarletInterface.h>
#include "Core/OpenGLContext.h"

namespace OpenGL {

	using namespace ScarletInterface;

	struct SCARLET_INTERFACE_API OpenGLComponent
	{
	public:
		Ref<OpenGLContext> Context;
		
		OpenGLComponent() = default;
		OpenGLComponent(const OpenGLComponent&) = default;
		OpenGLComponent(void* _ProcAddress)
		{
			Context = OpenGLContext::Create(_ProcAddress);
		}
	};

}