<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="18008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="iir_block_fast18_reg_rnd.vi" Type="VI" URL="../SubVIs/iir_block_fast18_reg_rnd.vi"/>
		<Item Name="iir_coefficients.ctl" Type="VI" URL="../Controls/iir_coefficients.ctl"/>
		<Item Name="IIR_SOS_18b_dc_reg.vi" Type="VI" URL="../SubVIs/IIR_SOS_18b_dc_reg.vi"/>
		<Item Name="mul_18x18_dc_ht_rnd.vi" Type="VI" URL="../SubVIs/mul_18x18_dc_ht_rnd.vi"/>
		<Item Name="mul_add_18_dc_rnd.vi" Type="VI" URL="../SubVIs/mul_add_18_dc_rnd.vi"/>
		<Item Name="mul_add_24_dc_ht_reg.vi" Type="VI" URL="../SubVIs/mul_add_24_dc_ht_reg.vi"/>
		<Item Name="mul_add_24_dc_ht_rnd.vi" Type="VI" URL="../SubVIs/mul_add_24_dc_ht_rnd.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="instr.lib" Type="Folder">
				<Item Name="niInstr DSP v1 Shared.lvlib" Type="Library" URL="/&lt;instrlib&gt;/_niInstr/DSP/v1/Shared/niInstr DSP v1 Shared.lvlib"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
