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
module dazzle.ProgressIcon;

private import dazzle.c.functions;
public  import dazzle.c.types;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.DrawingArea;
private import gtk.Widget;


/** */
public class ProgressIcon : DrawingArea
{
	/** the main Gtk struct */
	protected DzlProgressIcon* dzlProgressIcon;

	/** Get the main Gtk struct */
	public DzlProgressIcon* getProgressIconStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return dzlProgressIcon;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)dzlProgressIcon;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (DzlProgressIcon* dzlProgressIcon, bool ownedRef = false)
	{
		this.dzlProgressIcon = dzlProgressIcon;
		super(cast(GtkDrawingArea*)dzlProgressIcon, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return dzl_progress_icon_get_type();
	}

	/** */
	public this()
	{
		auto p = dzl_progress_icon_new();

		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(DzlProgressIcon*) p);
	}

	/** */
	public double getProgress()
	{
		return dzl_progress_icon_get_progress(dzlProgressIcon);
	}

	/** */
	public void setProgress(double progress)
	{
		dzl_progress_icon_set_progress(dzlProgressIcon, progress);
	}
}
