/*
 * This file is part of d-dazzle.
 *
 * d-dazzle is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * d-dazzle is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with d-dazzle; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */
module dazzle.SettingsFlagAction;

private import dazzle.c.functions;
public  import dazzle.c.types;
private import gio.ActionIF;
private import gio.ActionT;
private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;


/** */
public class SettingsFlagAction : ObjectG, ActionIF
{
	/** the main Gtk struct */
	protected DzlSettingsFlagAction* dzlSettingsFlagAction;

	/** Get the main Gtk struct */
	public DzlSettingsFlagAction* getSettingsFlagActionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return dzlSettingsFlagAction;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)dzlSettingsFlagAction;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (DzlSettingsFlagAction* dzlSettingsFlagAction, bool ownedRef = false)
	{
		this.dzlSettingsFlagAction = dzlSettingsFlagAction;
		super(cast(GObject*)dzlSettingsFlagAction, ownedRef);
	}

	// add the Action capabilities
	mixin ActionT!(DzlSettingsFlagAction);


	/** */
	public static GType getType()
	{
		return dzl_settings_flag_action_get_type();
	}

	/**
	 * This creates a new action that can be used to toggle an individual flag in
	 * a #GSettings key which is of a flags type.
	 *
	 * Returns: A new #GAction.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string schemaId, string schemaKey, string flagNick)
	{
		auto p = dzl_settings_flag_action_new(Str.toStringz(schemaId), Str.toStringz(schemaKey), Str.toStringz(flagNick));

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(DzlSettingsFlagAction*) p, true);
	}
}
