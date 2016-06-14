﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.42000
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

namespace Model
{
	using System.Data.Linq;
	using System.Data.Linq.Mapping;
	using System.Data;
	using System.Collections.Generic;
	using System.Reflection;
	using System.Linq;
	using System.Linq.Expressions;
	using System.ComponentModel;
	using System;
	
	
	[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="tcoder")]
	public partial class ChallengeDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region 可扩展性方法定义
    partial void OnCreated();
    partial void Insertchallenge(challenge instance);
    partial void Updatechallenge(challenge instance);
    partial void Deletechallenge(challenge instance);
    #endregion
		
		public ChallengeDataContext() : 
				base(global::Model.Properties.Settings.Default.tcoderConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public ChallengeDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public ChallengeDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public ChallengeDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public ChallengeDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<challenge> challenge
		{
			get
			{
				return this.GetTable<challenge>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.challenge")]
	public partial class challenge : INotifyPropertyChanging, INotifyPropertyChanged
	{
		
		private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
		
		private int _id;
		
		private int _compangId;
		
		private string _name;
		
		private string _language;
		
		private short _rank;
		
		private string _sponsor;
		
		private string _salary_range;
		
		private System.DateTime _begin_date;
		
		private System.DateTime _end_date;
		
		private System.Nullable<short> _status;
		
		private short _publiced;
		
		private string _items;
		
		private int _num;
		
		private short _del;
		
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnidChanging(int value);
    partial void OnidChanged();
    partial void OncompangIdChanging(int value);
    partial void OncompangIdChanged();
    partial void OnnameChanging(string value);
    partial void OnnameChanged();
    partial void OnlanguageChanging(string value);
    partial void OnlanguageChanged();
    partial void OnrankChanging(short value);
    partial void OnrankChanged();
    partial void OnsponsorChanging(string value);
    partial void OnsponsorChanged();
    partial void Onsalary_rangeChanging(string value);
    partial void Onsalary_rangeChanged();
    partial void Onbegin_dateChanging(System.DateTime value);
    partial void Onbegin_dateChanged();
    partial void Onend_dateChanging(System.DateTime value);
    partial void Onend_dateChanged();
    partial void OnstatusChanging(System.Nullable<short> value);
    partial void OnstatusChanged();
    partial void OnpublicedChanging(short value);
    partial void OnpublicedChanged();
    partial void OnitemsChanging(string value);
    partial void OnitemsChanged();
    partial void OnnumChanging(int value);
    partial void OnnumChanged();
    partial void OndelChanging(short value);
    partial void OndelChanged();
    #endregion
		
		public challenge()
		{
			OnCreated();
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_id", AutoSync=AutoSync.OnInsert, DbType="Int NOT NULL IDENTITY", IsPrimaryKey=true, IsDbGenerated=true)]
		public int id
		{
			get
			{
				return this._id;
			}
			set
			{
				if ((this._id != value))
				{
					this.OnidChanging(value);
					this.SendPropertyChanging();
					this._id = value;
					this.SendPropertyChanged("id");
					this.OnidChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_compangId", DbType="Int NOT NULL")]
		public int compangId
		{
			get
			{
				return this._compangId;
			}
			set
			{
				if ((this._compangId != value))
				{
					this.OncompangIdChanging(value);
					this.SendPropertyChanging();
					this._compangId = value;
					this.SendPropertyChanged("compangId");
					this.OncompangIdChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_name", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
		public string name
		{
			get
			{
				return this._name;
			}
			set
			{
				if ((this._name != value))
				{
					this.OnnameChanging(value);
					this.SendPropertyChanging();
					this._name = value;
					this.SendPropertyChanged("name");
					this.OnnameChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_language", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
		public string language
		{
			get
			{
				return this._language;
			}
			set
			{
				if ((this._language != value))
				{
					this.OnlanguageChanging(value);
					this.SendPropertyChanging();
					this._language = value;
					this.SendPropertyChanged("language");
					this.OnlanguageChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_rank", DbType="SmallInt NOT NULL")]
		public short rank
		{
			get
			{
				return this._rank;
			}
			set
			{
				if ((this._rank != value))
				{
					this.OnrankChanging(value);
					this.SendPropertyChanging();
					this._rank = value;
					this.SendPropertyChanged("rank");
					this.OnrankChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_sponsor", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
		public string sponsor
		{
			get
			{
				return this._sponsor;
			}
			set
			{
				if ((this._sponsor != value))
				{
					this.OnsponsorChanging(value);
					this.SendPropertyChanging();
					this._sponsor = value;
					this.SendPropertyChanged("sponsor");
					this.OnsponsorChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_salary_range", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
		public string salary_range
		{
			get
			{
				return this._salary_range;
			}
			set
			{
				if ((this._salary_range != value))
				{
					this.Onsalary_rangeChanging(value);
					this.SendPropertyChanging();
					this._salary_range = value;
					this.SendPropertyChanged("salary_range");
					this.Onsalary_rangeChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_begin_date", DbType="DateTime NOT NULL")]
		public System.DateTime begin_date
		{
			get
			{
				return this._begin_date;
			}
			set
			{
				if ((this._begin_date != value))
				{
					this.Onbegin_dateChanging(value);
					this.SendPropertyChanging();
					this._begin_date = value;
					this.SendPropertyChanged("begin_date");
					this.Onbegin_dateChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_end_date", DbType="DateTime NOT NULL")]
		public System.DateTime end_date
		{
			get
			{
				return this._end_date;
			}
			set
			{
				if ((this._end_date != value))
				{
					this.Onend_dateChanging(value);
					this.SendPropertyChanging();
					this._end_date = value;
					this.SendPropertyChanged("end_date");
					this.Onend_dateChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_status", DbType="SmallInt")]
		public System.Nullable<short> status
		{
			get
			{
				return this._status;
			}
			set
			{
				if ((this._status != value))
				{
					this.OnstatusChanging(value);
					this.SendPropertyChanging();
					this._status = value;
					this.SendPropertyChanged("status");
					this.OnstatusChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_publiced", DbType="SmallInt NOT NULL")]
		public short publiced
		{
			get
			{
				return this._publiced;
			}
			set
			{
				if ((this._publiced != value))
				{
					this.OnpublicedChanging(value);
					this.SendPropertyChanging();
					this._publiced = value;
					this.SendPropertyChanged("publiced");
					this.OnpublicedChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_items", DbType="VarChar(50)")]
		public string items
		{
			get
			{
				return this._items;
			}
			set
			{
				if ((this._items != value))
				{
					this.OnitemsChanging(value);
					this.SendPropertyChanging();
					this._items = value;
					this.SendPropertyChanged("items");
					this.OnitemsChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_num", DbType="Int NOT NULL")]
		public int num
		{
			get
			{
				return this._num;
			}
			set
			{
				if ((this._num != value))
				{
					this.OnnumChanging(value);
					this.SendPropertyChanging();
					this._num = value;
					this.SendPropertyChanged("num");
					this.OnnumChanged();
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_del", DbType="SmallInt NOT NULL")]
		public short del
		{
			get
			{
				return this._del;
			}
			set
			{
				if ((this._del != value))
				{
					this.OndelChanging(value);
					this.SendPropertyChanging();
					this._del = value;
					this.SendPropertyChanged("del");
					this.OndelChanged();
				}
			}
		}
		
		public event PropertyChangingEventHandler PropertyChanging;
		
		public event PropertyChangedEventHandler PropertyChanged;
		
		protected virtual void SendPropertyChanging()
		{
			if ((this.PropertyChanging != null))
			{
				this.PropertyChanging(this, emptyChangingEventArgs);
			}
		}
		
		protected virtual void SendPropertyChanged(String propertyName)
		{
			if ((this.PropertyChanged != null))
			{
				this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
			}
		}
	}
}
#pragma warning restore 1591
