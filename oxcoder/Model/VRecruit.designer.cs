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
	public partial class VRecruitDataContext : System.Data.Linq.DataContext
	{
		
		private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
		
    #region 可扩展性方法定义
    partial void OnCreated();
    #endregion
		
		public VRecruitDataContext() : 
				base(global::Model.Properties.Settings.Default.tcoderConnectionString, mappingSource)
		{
			OnCreated();
		}
		
		public VRecruitDataContext(string connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public VRecruitDataContext(System.Data.IDbConnection connection) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public VRecruitDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public VRecruitDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
				base(connection, mappingSource)
		{
			OnCreated();
		}
		
		public System.Data.Linq.Table<v_recruit> v_recruit
		{
			get
			{
				return this.GetTable<v_recruit>();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.v_recruit")]
	public partial class v_recruit
	{
		
		private int _recruit_id;
		
		private int _userId;
		
		private int _challengeId;
		
		private string _challenge_name;
		
		private string _company_name;
		
		private string _language;
		
		private short _rank;
		
		private string _salary_range;
		
		private string _sponsor;
		
		private System.DateTime _begin_date;
		
		private System.DateTime _end_date;
		
		private int _num;
		
		private System.Nullable<short> _userState;
		
		private System.Nullable<short> _isHistory;
		
		private System.Nullable<int> _highest;
		
		public v_recruit()
		{
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_recruit_id", DbType="Int NOT NULL")]
		public int recruit_id
		{
			get
			{
				return this._recruit_id;
			}
			set
			{
				if ((this._recruit_id != value))
				{
					this._recruit_id = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userId", DbType="Int NOT NULL")]
		public int userId
		{
			get
			{
				return this._userId;
			}
			set
			{
				if ((this._userId != value))
				{
					this._userId = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_challengeId", DbType="Int NOT NULL")]
		public int challengeId
		{
			get
			{
				return this._challengeId;
			}
			set
			{
				if ((this._challengeId != value))
				{
					this._challengeId = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_challenge_name", DbType="VarChar(50) NOT NULL", CanBeNull=false)]
		public string challenge_name
		{
			get
			{
				return this._challenge_name;
			}
			set
			{
				if ((this._challenge_name != value))
				{
					this._challenge_name = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_company_name", DbType="VarChar(500)")]
		public string company_name
		{
			get
			{
				return this._company_name;
			}
			set
			{
				if ((this._company_name != value))
				{
					this._company_name = value;
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
					this._language = value;
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
					this._rank = value;
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
					this._salary_range = value;
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
					this._sponsor = value;
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
					this._begin_date = value;
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
					this._end_date = value;
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
					this._num = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userState", DbType="SmallInt")]
		public System.Nullable<short> userState
		{
			get
			{
				return this._userState;
			}
			set
			{
				if ((this._userState != value))
				{
					this._userState = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_isHistory", DbType="SmallInt")]
		public System.Nullable<short> isHistory
		{
			get
			{
				return this._isHistory;
			}
			set
			{
				if ((this._isHistory != value))
				{
					this._isHistory = value;
				}
			}
		}
		
		[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_highest", DbType="Int")]
		public System.Nullable<int> highest
		{
			get
			{
				return this._highest;
			}
			set
			{
				if ((this._highest != value))
				{
					this._highest = value;
				}
			}
		}
	}
}
#pragma warning restore 1591
