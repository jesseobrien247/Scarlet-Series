// Copyright 2016-2021 Scarlet-Renderer / Red-Scarlet. All rights reserved.
// RendererContext.h 10/05/2021 - Functional Class.
#pragma once

#include <ScarletInterface.h>
#include <Core/InterfaceEntrypoint.h>

#include "Graphics/Shader.h"

namespace Renderer {

	using namespace ScarletInterface;

	// OpenGL Interface currently uses GLFW (Abstract to Scarlet-WindowAPI)
	class SCARLET_INTERFACE_API InterfaceRenderer : public InterfaceModule
	{
	public:
		virtual void OnGlobal(Event& _Event) override;

	private:
		bool OnAppUpdate(AppUpdateEvent& _Event);

	private:
		Ref<Shader> m_Shader;
		bool m_Running = false, m_Initialized = false;
	};

}

INTERFACE_ENTRYPOINT(Renderer::InterfaceRenderer);