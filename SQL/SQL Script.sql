USE [test]
GO
/****** Object:  Table [dbo].[ErrorLog]    Script Date: 16/12/2021 17:52:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ErrorLog](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[ActionName] [nvarchar](100) NULL,
	[ControllerName] [nvarchar](100) NULL,
	[Message] [nvarchar](500) NULL,
	[StackTrace] [nvarchar](max) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_ErrorLog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTS]    Script Date: 16/12/2021 17:52:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTS](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[NAME] [nvarchar](100) NOT NULL,
	[PRICE] [int] NOT NULL,
	[DESCRIPTION] [nvarchar](max) NULL,
	[OUTOFSTOCK] [bit] NOT NULL,
	[MODELNUMBER] [nvarchar](50) NULL,
 CONSTRAINT [PK_PRODUCT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ErrorLog] ON 
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (4, N'ProductList', N'Product', N'The source IQueryable doesn''t implement IDbAsyncEnumerable<ShopBridge.Models.sp_GETALLPRODUCTS_Result>. Only sources that implement IDbAsyncEnumerable can be used for Entity Framework asynchronous operations. For more details see http://go.microsoft.com/fwlink/?LinkId=287068.', N'   at System.Data.Entity.QueryableExtensions.AsDbAsyncEnumerable[T](IQueryable`1 source)
   at System.Data.Entity.QueryableExtensions.ToListAsync[TSource](IQueryable`1 source)
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 15
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T12:48:39.720' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (5, N'ProductList', N'Product', N'The source IQueryable doesn''t implement IDbAsyncEnumerable<ShopBridge.Models.sp_GETALLPRODUCTS_Result>. Only sources that implement IDbAsyncEnumerable can be used for Entity Framework asynchronous operations. For more details see http://go.microsoft.com/fwlink/?LinkId=287068.', N'   at System.Data.Entity.QueryableExtensions.AsDbAsyncEnumerable[T](IQueryable`1 source)
   at System.Data.Entity.QueryableExtensions.ToListAsync[TSource](IQueryable`1 source)
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 15
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T12:50:22.463' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (6, N'ProductList', N'Product', N'The source IQueryable doesn''t implement IDbAsyncEnumerable<ShopBridge.Models.sp_GETALLPRODUCTS_Result>. Only sources that implement IDbAsyncEnumerable can be used for Entity Framework asynchronous operations. For more details see http://go.microsoft.com/fwlink/?LinkId=287068.', N'   at System.Data.Entity.QueryableExtensions.AsDbAsyncEnumerable[T](IQueryable`1 source)
   at System.Data.Entity.QueryableExtensions.ToListAsync[TSource](IQueryable`1 source)
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 15
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T12:51:33.437' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (7, N'ProductList', N'Product', N'The source IQueryable doesn''t implement IDbAsyncEnumerable<ShopBridge.Models.sp_GETALLPRODUCTS_Result>. Only sources that implement IDbAsyncEnumerable can be used for Entity Framework asynchronous operations. For more details see http://go.microsoft.com/fwlink/?LinkId=287068.', N'   at System.Data.Entity.QueryableExtensions.AsDbAsyncEnumerable[T](IQueryable`1 source)
   at System.Data.Entity.QueryableExtensions.ToListAsync[TSource](IQueryable`1 source)
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 15
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T12:54:45.433' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (8, N'ProductList', N'Product', N'The source IQueryable doesn''t implement IDbAsyncEnumerable<ShopBridge.Models.sp_GETALLPRODUCTS_Result>. Only sources that implement IDbAsyncEnumerable can be used for Entity Framework asynchronous operations. For more details see http://go.microsoft.com/fwlink/?LinkId=287068.', N'   at System.Data.Entity.QueryableExtensions.AsDbAsyncEnumerable[T](IQueryable`1 source)
   at System.Data.Entity.QueryableExtensions.ToListAsync[TSource](IQueryable`1 source)
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 15
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T12:55:05.443' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (9, N'ProductList', N'Product', N'The source IQueryable doesn''t implement IDbAsyncEnumerable<ShopBridge.Models.sp_GETALLPRODUCTS_Result>. Only sources that implement IDbAsyncEnumerable can be used for Entity Framework asynchronous operations. For more details see http://go.microsoft.com/fwlink/?LinkId=287068.', N'   at System.Data.Entity.QueryableExtensions.AsDbAsyncEnumerable[T](IQueryable`1 source)
   at System.Data.Entity.QueryableExtensions.ToListAsync[TSource](IQueryable`1 source)
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 15
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T13:06:07.593' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (10, N'ProductList', N'Product', N'The ''PRICE'' property on ''sp_GETALLPRODUCTS_Result'' could not be set to a ''System.Int32'' value. You must set this property to a non-null value of type ''System.Decimal''. ', N'   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper.ErrorHandlingValueReader`1.GetValue(DbDataReader reader, Int32 ordinal)
   at lambda_method(Closure , Shaper )
   at System.Data.Entity.Core.Common.Internal.Materialization.Coordinator`1.ReadNextElement(Shaper shaper)
   at System.Data.Entity.Core.Common.Internal.Materialization.Shaper`1.SimpleEnumerator.MoveNext()
   at System.Collections.Generic.List`1..ctor(IEnumerable`1 collection)
   at System.Linq.Enumerable.ToList[TSource](IEnumerable`1 source)
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 15
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T13:14:04.233' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (11, N'ProductList', N'Product', N'An error occurred while preparing the command definition. See the inner exception for details.', N'   at System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition..ctor(DbProviderFactory storeProviderFactory, DbCommandTree commandTree, DbInterceptionContext interceptionContext, IDbDependencyResolver resolver, BridgeDataReaderFactory bridgeDataReaderFactory, ColumnMapFactory columnMapFactory)
   at System.Data.Entity.Core.EntityClient.EntityCommand.CreateCommandDefinition()
   at System.Data.Entity.Core.EntityClient.EntityCommand.TryGetEntityCommandDefinitionFromQueryCache(EntityCommandDefinition& entityCommandDefinition)
   at System.Data.Entity.Core.EntityClient.EntityCommand.GetCommandDefinition()
   at System.Data.Entity.Core.Objects.ObjectContext.CreateFunctionObjectResult[TElement](EntityCommand entityCommand, ReadOnlyCollection`1 entitySets, EdmType[] edmTypes, ExecutionOptions executionOptions)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass47`1.<ExecuteFunction>b__46()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass47`1.<ExecuteFunction>b__45()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, ExecutionOptions executionOptions, ObjectParameter[] parameters)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, MergeOption mergeOption, ObjectParameter[] parameters)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, ObjectParameter[] parameters)
   at ShopBridge.Models.testEntities.sp_GETALLPRODUCTS() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\DB.Context.cs:line 35
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 15
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T13:17:57.653' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (12, N'ProductList', N'Product', N'An error occurred while preparing the command definition. See the inner exception for details.', N'   at System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition..ctor(DbProviderFactory storeProviderFactory, DbCommandTree commandTree, DbInterceptionContext interceptionContext, IDbDependencyResolver resolver, BridgeDataReaderFactory bridgeDataReaderFactory, ColumnMapFactory columnMapFactory)
   at System.Data.Entity.Core.EntityClient.EntityCommand.CreateCommandDefinition()
   at System.Data.Entity.Core.EntityClient.EntityCommand.TryGetEntityCommandDefinitionFromQueryCache(EntityCommandDefinition& entityCommandDefinition)
   at System.Data.Entity.Core.EntityClient.EntityCommand.GetCommandDefinition()
   at System.Data.Entity.Core.Objects.ObjectContext.CreateFunctionObjectResult[TElement](EntityCommand entityCommand, ReadOnlyCollection`1 entitySets, EdmType[] edmTypes, ExecutionOptions executionOptions)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass47`1.<ExecuteFunction>b__46()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass47`1.<ExecuteFunction>b__45()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, ExecutionOptions executionOptions, ObjectParameter[] parameters)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, MergeOption mergeOption, ObjectParameter[] parameters)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, ObjectParameter[] parameters)
   at ShopBridge.Models.testEntities.sp_GETALLPRODUCTS() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\DB.Context.cs:line 35
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 15
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T13:18:06.673' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (13, N'ProductList', N'Product', N'An error occurred while preparing the command definition. See the inner exception for details.', N'   at System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition..ctor(DbProviderFactory storeProviderFactory, DbCommandTree commandTree, DbInterceptionContext interceptionContext, IDbDependencyResolver resolver, BridgeDataReaderFactory bridgeDataReaderFactory, ColumnMapFactory columnMapFactory)
   at System.Data.Entity.Core.EntityClient.EntityCommand.CreateCommandDefinition()
   at System.Data.Entity.Core.EntityClient.EntityCommand.TryGetEntityCommandDefinitionFromQueryCache(EntityCommandDefinition& entityCommandDefinition)
   at System.Data.Entity.Core.EntityClient.EntityCommand.GetCommandDefinition()
   at System.Data.Entity.Core.Objects.ObjectContext.CreateFunctionObjectResult[TElement](EntityCommand entityCommand, ReadOnlyCollection`1 entitySets, EdmType[] edmTypes, ExecutionOptions executionOptions)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass47`1.<ExecuteFunction>b__46()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass47`1.<ExecuteFunction>b__45()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, ExecutionOptions executionOptions, ObjectParameter[] parameters)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, MergeOption mergeOption, ObjectParameter[] parameters)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, ObjectParameter[] parameters)
   at ShopBridge.Models.testEntities.sp_GETALLPRODUCTS() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\DB.Context.cs:line 35
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 15
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T13:18:07.943' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (14, N'ProductList', N'Product', N'An error occurred while preparing the command definition. See the inner exception for details.', N'   at System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition..ctor(DbProviderFactory storeProviderFactory, DbCommandTree commandTree, DbInterceptionContext interceptionContext, IDbDependencyResolver resolver, BridgeDataReaderFactory bridgeDataReaderFactory, ColumnMapFactory columnMapFactory)
   at System.Data.Entity.Core.EntityClient.EntityCommand.CreateCommandDefinition()
   at System.Data.Entity.Core.EntityClient.EntityCommand.TryGetEntityCommandDefinitionFromQueryCache(EntityCommandDefinition& entityCommandDefinition)
   at System.Data.Entity.Core.EntityClient.EntityCommand.GetCommandDefinition()
   at System.Data.Entity.Core.Objects.ObjectContext.CreateFunctionObjectResult[TElement](EntityCommand entityCommand, ReadOnlyCollection`1 entitySets, EdmType[] edmTypes, ExecutionOptions executionOptions)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass47`1.<ExecuteFunction>b__46()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass47`1.<ExecuteFunction>b__45()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, ExecutionOptions executionOptions, ObjectParameter[] parameters)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, MergeOption mergeOption, ObjectParameter[] parameters)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, ObjectParameter[] parameters)
   at ShopBridge.Models.testEntities.sp_GETALLPRODUCTS() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\DB.Context.cs:line 35
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 15
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T13:18:23.003' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (15, N'ProductList', N'Product', N'An error occurred while preparing the command definition. See the inner exception for details.', N'   at System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition..ctor(DbProviderFactory storeProviderFactory, DbCommandTree commandTree, DbInterceptionContext interceptionContext, IDbDependencyResolver resolver, BridgeDataReaderFactory bridgeDataReaderFactory, ColumnMapFactory columnMapFactory)
   at System.Data.Entity.Core.EntityClient.EntityCommand.CreateCommandDefinition()
   at System.Data.Entity.Core.EntityClient.EntityCommand.TryGetEntityCommandDefinitionFromQueryCache(EntityCommandDefinition& entityCommandDefinition)
   at System.Data.Entity.Core.EntityClient.EntityCommand.GetCommandDefinition()
   at System.Data.Entity.Core.Objects.ObjectContext.CreateFunctionObjectResult[TElement](EntityCommand entityCommand, ReadOnlyCollection`1 entitySets, EdmType[] edmTypes, ExecutionOptions executionOptions)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass47`1.<ExecuteFunction>b__46()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass47`1.<ExecuteFunction>b__45()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, ExecutionOptions executionOptions, ObjectParameter[] parameters)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, MergeOption mergeOption, ObjectParameter[] parameters)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, ObjectParameter[] parameters)
   at ShopBridge.Models.testEntities.sp_GETALLPRODUCTS() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\DB.Context.cs:line 35
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 15
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T13:20:03.360' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (16, N'ProductList', N'Product', N'An error occurred while preparing the command definition. See the inner exception for details.', N'   at System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition..ctor(DbProviderFactory storeProviderFactory, DbCommandTree commandTree, DbInterceptionContext interceptionContext, IDbDependencyResolver resolver, BridgeDataReaderFactory bridgeDataReaderFactory, ColumnMapFactory columnMapFactory)
   at System.Data.Entity.Core.EntityClient.EntityCommand.CreateCommandDefinition()
   at System.Data.Entity.Core.EntityClient.EntityCommand.TryGetEntityCommandDefinitionFromQueryCache(EntityCommandDefinition& entityCommandDefinition)
   at System.Data.Entity.Core.EntityClient.EntityCommand.GetCommandDefinition()
   at System.Data.Entity.Core.Objects.ObjectContext.CreateFunctionObjectResult[TElement](EntityCommand entityCommand, ReadOnlyCollection`1 entitySets, EdmType[] edmTypes, ExecutionOptions executionOptions)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass47`1.<ExecuteFunction>b__46()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass47`1.<ExecuteFunction>b__45()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, ExecutionOptions executionOptions, ObjectParameter[] parameters)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, MergeOption mergeOption, ObjectParameter[] parameters)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, ObjectParameter[] parameters)
   at ShopBridge.Models.testEntities.sp_GETALLPRODUCTS() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\DB.Context.cs:line 35
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 15
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T13:20:04.593' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (17, N'ProductList', N'Product', N'An error occurred while preparing the command definition. See the inner exception for details.', N'   at System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition..ctor(DbProviderFactory storeProviderFactory, DbCommandTree commandTree, DbInterceptionContext interceptionContext, IDbDependencyResolver resolver, BridgeDataReaderFactory bridgeDataReaderFactory, ColumnMapFactory columnMapFactory)
   at System.Data.Entity.Core.EntityClient.EntityCommand.CreateCommandDefinition()
   at System.Data.Entity.Core.EntityClient.EntityCommand.TryGetEntityCommandDefinitionFromQueryCache(EntityCommandDefinition& entityCommandDefinition)
   at System.Data.Entity.Core.EntityClient.EntityCommand.GetCommandDefinition()
   at System.Data.Entity.Core.Objects.ObjectContext.CreateFunctionObjectResult[TElement](EntityCommand entityCommand, ReadOnlyCollection`1 entitySets, EdmType[] edmTypes, ExecutionOptions executionOptions)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass47`1.<ExecuteFunction>b__46()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass47`1.<ExecuteFunction>b__45()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, ExecutionOptions executionOptions, ObjectParameter[] parameters)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, MergeOption mergeOption, ObjectParameter[] parameters)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, ObjectParameter[] parameters)
   at ShopBridge.Models.testEntities.sp_GETALLPRODUCTS() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\DB.Context.cs:line 35
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 15
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T13:20:05.463' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (18, N'ProductList', N'Product', N'An error occurred while preparing the command definition. See the inner exception for details.', N'   at System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition..ctor(DbProviderFactory storeProviderFactory, DbCommandTree commandTree, DbInterceptionContext interceptionContext, IDbDependencyResolver resolver, BridgeDataReaderFactory bridgeDataReaderFactory, ColumnMapFactory columnMapFactory)
   at System.Data.Entity.Core.EntityClient.EntityCommand.CreateCommandDefinition()
   at System.Data.Entity.Core.EntityClient.EntityCommand.TryGetEntityCommandDefinitionFromQueryCache(EntityCommandDefinition& entityCommandDefinition)
   at System.Data.Entity.Core.EntityClient.EntityCommand.GetCommandDefinition()
   at System.Data.Entity.Core.Objects.ObjectContext.CreateFunctionObjectResult[TElement](EntityCommand entityCommand, ReadOnlyCollection`1 entitySets, EdmType[] edmTypes, ExecutionOptions executionOptions)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass47`1.<ExecuteFunction>b__46()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass47`1.<ExecuteFunction>b__45()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, ExecutionOptions executionOptions, ObjectParameter[] parameters)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, MergeOption mergeOption, ObjectParameter[] parameters)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, ObjectParameter[] parameters)
   at ShopBridge.Models.testEntities.sp_GETALLPRODUCTS() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\DB.Context.cs:line 35
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 15
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T13:20:06.283' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (19, N'ProductList', N'Product', N'An error occurred while preparing the command definition. See the inner exception for details.', N'   at System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition..ctor(DbProviderFactory storeProviderFactory, DbCommandTree commandTree, DbInterceptionContext interceptionContext, IDbDependencyResolver resolver, BridgeDataReaderFactory bridgeDataReaderFactory, ColumnMapFactory columnMapFactory)
   at System.Data.Entity.Core.EntityClient.EntityCommand.CreateCommandDefinition()
   at System.Data.Entity.Core.EntityClient.EntityCommand.TryGetEntityCommandDefinitionFromQueryCache(EntityCommandDefinition& entityCommandDefinition)
   at System.Data.Entity.Core.EntityClient.EntityCommand.GetCommandDefinition()
   at System.Data.Entity.Core.Objects.ObjectContext.CreateFunctionObjectResult[TElement](EntityCommand entityCommand, ReadOnlyCollection`1 entitySets, EdmType[] edmTypes, ExecutionOptions executionOptions)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass47`1.<ExecuteFunction>b__46()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass47`1.<ExecuteFunction>b__45()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, ExecutionOptions executionOptions, ObjectParameter[] parameters)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, MergeOption mergeOption, ObjectParameter[] parameters)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, ObjectParameter[] parameters)
   at ShopBridge.Models.testEntities.sp_GETALLPRODUCTS() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\DB.Context.cs:line 35
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 15
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T13:20:07.163' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (20, N'ProductList', N'Product', N'An error occurred while preparing the command definition. See the inner exception for details.', N'   at System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition..ctor(DbProviderFactory storeProviderFactory, DbCommandTree commandTree, DbInterceptionContext interceptionContext, IDbDependencyResolver resolver, BridgeDataReaderFactory bridgeDataReaderFactory, ColumnMapFactory columnMapFactory)
   at System.Data.Entity.Core.EntityClient.EntityCommand.CreateCommandDefinition()
   at System.Data.Entity.Core.EntityClient.EntityCommand.TryGetEntityCommandDefinitionFromQueryCache(EntityCommandDefinition& entityCommandDefinition)
   at System.Data.Entity.Core.EntityClient.EntityCommand.GetCommandDefinition()
   at System.Data.Entity.Core.Objects.ObjectContext.CreateFunctionObjectResult[TElement](EntityCommand entityCommand, ReadOnlyCollection`1 entitySets, EdmType[] edmTypes, ExecutionOptions executionOptions)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass47`1.<ExecuteFunction>b__46()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass47`1.<ExecuteFunction>b__45()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, ExecutionOptions executionOptions, ObjectParameter[] parameters)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, MergeOption mergeOption, ObjectParameter[] parameters)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, ObjectParameter[] parameters)
   at ShopBridge.Models.testEntities.sp_GETALLPRODUCTS() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\DB.Context.cs:line 35
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 15
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T13:20:08.210' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (21, N'ProductList', N'Product', N'An error occurred while preparing the command definition. See the inner exception for details.', N'   at System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition..ctor(DbProviderFactory storeProviderFactory, DbCommandTree commandTree, DbInterceptionContext interceptionContext, IDbDependencyResolver resolver, BridgeDataReaderFactory bridgeDataReaderFactory, ColumnMapFactory columnMapFactory)
   at System.Data.Entity.Core.EntityClient.EntityCommand.CreateCommandDefinition()
   at System.Data.Entity.Core.EntityClient.EntityCommand.TryGetEntityCommandDefinitionFromQueryCache(EntityCommandDefinition& entityCommandDefinition)
   at System.Data.Entity.Core.EntityClient.EntityCommand.GetCommandDefinition()
   at System.Data.Entity.Core.Objects.ObjectContext.CreateFunctionObjectResult[TElement](EntityCommand entityCommand, ReadOnlyCollection`1 entitySets, EdmType[] edmTypes, ExecutionOptions executionOptions)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass47`1.<ExecuteFunction>b__46()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass47`1.<ExecuteFunction>b__45()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, ExecutionOptions executionOptions, ObjectParameter[] parameters)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, MergeOption mergeOption, ObjectParameter[] parameters)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, ObjectParameter[] parameters)
   at ShopBridge.Models.testEntities.sp_GETALLPRODUCTS() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\DB.Context.cs:line 35
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 15
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T13:20:18.300' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (22, N'ProductList', N'Product', N'An error occurred while preparing the command definition. See the inner exception for details.', N'   at System.Data.Entity.Core.EntityClient.Internal.EntityCommandDefinition..ctor(DbProviderFactory storeProviderFactory, DbCommandTree commandTree, DbInterceptionContext interceptionContext, IDbDependencyResolver resolver, BridgeDataReaderFactory bridgeDataReaderFactory, ColumnMapFactory columnMapFactory)
   at System.Data.Entity.Core.EntityClient.EntityCommand.CreateCommandDefinition()
   at System.Data.Entity.Core.EntityClient.EntityCommand.TryGetEntityCommandDefinitionFromQueryCache(EntityCommandDefinition& entityCommandDefinition)
   at System.Data.Entity.Core.EntityClient.EntityCommand.GetCommandDefinition()
   at System.Data.Entity.Core.Objects.ObjectContext.CreateFunctionObjectResult[TElement](EntityCommand entityCommand, ReadOnlyCollection`1 entitySets, EdmType[] edmTypes, ExecutionOptions executionOptions)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass47`1.<ExecuteFunction>b__46()
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteInTransaction[T](Func`1 func, IDbExecutionStrategy executionStrategy, Boolean startLocalTransaction, Boolean releaseConnectionOnSuccess)
   at System.Data.Entity.Core.Objects.ObjectContext.<>c__DisplayClass47`1.<ExecuteFunction>b__45()
   at System.Data.Entity.SqlServer.DefaultSqlExecutionStrategy.Execute[TResult](Func`1 operation)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, ExecutionOptions executionOptions, ObjectParameter[] parameters)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, MergeOption mergeOption, ObjectParameter[] parameters)
   at System.Data.Entity.Core.Objects.ObjectContext.ExecuteFunction[TElement](String functionName, ObjectParameter[] parameters)
   at ShopBridge.Models.testEntities.sp_GETALLPRODUCTS() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\DB.Context.cs:line 35
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 15
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T13:20:59.483' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (23, N'ProductList', N'Product', N'The source IQueryable doesn''t implement IDbAsyncEnumerable<ShopBridge.Models.sp_GETALLPRODUCTS_Result>. Only sources that implement IDbAsyncEnumerable can be used for Entity Framework asynchronous operations. For more details see http://go.microsoft.com/fwlink/?LinkId=287068.', N'   at System.Data.Entity.QueryableExtensions.AsDbAsyncEnumerable[T](IQueryable`1 source)
   at System.Data.Entity.QueryableExtensions.ToListAsync[TSource](IQueryable`1 source)
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 15
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T13:33:04.697' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (24, N'ProductList', N'Product', N'The source IQueryable doesn''t implement IDbAsyncEnumerable<ShopBridge.Models.sp_GETALLPRODUCTS_Result>. Only sources that implement IDbAsyncEnumerable can be used for Entity Framework asynchronous operations. For more details see http://go.microsoft.com/fwlink/?LinkId=287068.', N'   at System.Data.Entity.QueryableExtensions.AsDbAsyncEnumerable[T](IQueryable`1 source)
   at System.Data.Entity.QueryableExtensions.ToListAsync[TSource](IQueryable`1 source)
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 16
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T13:50:34.977' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (25, N'ProductList', N'Product', N'The source IQueryable doesn''t implement IDbAsyncEnumerable<ShopBridge.Models.sp_GETALLPRODUCTS_Result>. Only sources that implement IDbAsyncEnumerable can be used for Entity Framework asynchronous operations. For more details see http://go.microsoft.com/fwlink/?LinkId=287068.', N'   at System.Data.Entity.QueryableExtensions.AsDbAsyncEnumerable[T](IQueryable`1 source)
   at System.Data.Entity.QueryableExtensions.ToListAsync[TSource](IQueryable`1 source)
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 16
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T13:52:45.327' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (26, N'ProductList', N'Product', N'The source IQueryable doesn''t implement IDbAsyncEnumerable<ShopBridge.Models.sp_GETALLPRODUCTS_Result>. Only sources that implement IDbAsyncEnumerable can be used for Entity Framework asynchronous operations. For more details see http://go.microsoft.com/fwlink/?LinkId=287068.', N'   at System.Data.Entity.QueryableExtensions.AsDbAsyncEnumerable[T](IQueryable`1 source)
   at System.Data.Entity.QueryableExtensions.ToListAsync[TSource](IQueryable`1 source)
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 18
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T14:10:59.790' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (27, N'ProductList', N'Product', N'The source IQueryable doesn''t implement IDbAsyncEnumerable<ShopBridge.Models.sp_GETALLPRODUCTS_Result>. Only sources that implement IDbAsyncEnumerable can be used for Entity Framework asynchronous operations. For more details see http://go.microsoft.com/fwlink/?LinkId=287068.', N'   at System.Data.Entity.QueryableExtensions.AsDbAsyncEnumerable[T](IQueryable`1 source)
   at System.Data.Entity.QueryableExtensions.ToListAsync[TSource](IQueryable`1 source)
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 19
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T14:23:04.497' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (28, N'ProductList', N'Product', N'The source IQueryable doesn''t implement IDbAsyncEnumerable<ShopBridge.Models.sp_GETALLPRODUCTS_Result>. Only sources that implement IDbAsyncEnumerable can be used for Entity Framework asynchronous operations. For more details see http://go.microsoft.com/fwlink/?LinkId=287068.', N'   at System.Data.Entity.QueryableExtensions.AsDbAsyncEnumerable[T](IQueryable`1 source)
   at System.Data.Entity.QueryableExtensions.ToListAsync[TSource](IQueryable`1 source)
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 19
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T14:23:10.380' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (29, N'ProductList', N'Product', N'The source IQueryable doesn''t implement IDbAsyncEnumerable<ShopBridge.Models.sp_GETALLPRODUCTS_Result>. Only sources that implement IDbAsyncEnumerable can be used for Entity Framework asynchronous operations. For more details see http://go.microsoft.com/fwlink/?LinkId=287068.', N'   at System.Data.Entity.QueryableExtensions.AsDbAsyncEnumerable[T](IQueryable`1 source)
   at System.Data.Entity.QueryableExtensions.ToListAsync[TSource](IQueryable`1 source)
   at ShopBridge.Models.ProductRespository.<GetAll_ProductList>d__3.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 29
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T14:53:20.963' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (30, N'ProductList', N'Product', N'The source IQueryable doesn''t implement IDbAsyncEnumerable<ShopBridge.Models.sp_GETALLPRODUCTS_Result>. Only sources that implement IDbAsyncEnumerable can be used for Entity Framework asynchronous operations. For more details see http://go.microsoft.com/fwlink/?LinkId=287068.', N'   at System.Data.Entity.QueryableExtensions.AsDbAsyncEnumerable[T](IQueryable`1 source)
   at System.Data.Entity.QueryableExtensions.ToListAsync[TSource](IQueryable`1 source)
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 18
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T14:54:09.573' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (31, N'ProductList', N'Product', N'The source IQueryable doesn''t implement IDbAsyncEnumerable<ShopBridge.Models.sp_GETALLPRODUCTS_Result>. Only sources that implement IDbAsyncEnumerable can be used for Entity Framework asynchronous operations. For more details see http://go.microsoft.com/fwlink/?LinkId=287068.', N'   at System.Data.Entity.QueryableExtensions.AsDbAsyncEnumerable[T](IQueryable`1 source)
   at System.Data.Entity.QueryableExtensions.ToListAsync[TSource](IQueryable`1 source)
   at ShopBridge.Models.ProductRespository.<GetAllProductList>d__1.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 18
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter`1.GetResult()
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T14:54:15.587' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (32, N'ProductList', N'Product', N'The source IQueryable doesn''t implement IDbAsyncEnumerable<ShopBridge.Models.sp_GETALLPRODUCTS_Result>. Only sources that implement IDbAsyncEnumerable can be used for Entity Framework asynchronous operations. For more details see http://go.microsoft.com/fwlink/?LinkId=287068.', N'   at System.Data.Entity.QueryableExtensions.AsDbAsyncEnumerable[T](IQueryable`1 source)
   at System.Data.Entity.QueryableExtensions.ToListAsync[TSource](IQueryable`1 source)
   at ShopBridge.Models.ProductRespository.GetAllProductList() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 18
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T14:55:51.947' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (33, N'ProductList', N'Product', N'The source IQueryable doesn''t implement IDbAsyncEnumerable<ShopBridge.Models.sp_GETALLPRODUCTS_Result>. Only sources that implement IDbAsyncEnumerable can be used for Entity Framework asynchronous operations. For more details see http://go.microsoft.com/fwlink/?LinkId=287068.', N'   at System.Data.Entity.QueryableExtensions.AsDbAsyncEnumerable[T](IQueryable`1 source)
   at System.Data.Entity.QueryableExtensions.ToListAsync[TSource](IQueryable`1 source)
   at ShopBridge.Models.ProductRespository.GetAllProductList() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 18
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T14:55:55.200' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (34, N'ProductList', N'Product', N'The source IQueryable doesn''t implement IDbAsyncEnumerable<ShopBridge.Models.sp_GETALLPRODUCTS_Result>. Only sources that implement IDbAsyncEnumerable can be used for Entity Framework asynchronous operations. For more details see http://go.microsoft.com/fwlink/?LinkId=287068.', N'   at System.Data.Entity.QueryableExtensions.AsDbAsyncEnumerable[T](IQueryable`1 source)
   at System.Data.Entity.QueryableExtensions.ToListAsync[TSource](IQueryable`1 source)
   at ShopBridge.Models.ProductRespository.GetAllProductList() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Models\ProductRespository.cs:line 18
   at ShopBridge.Controllers.ProductController.<ProductList>d__0.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 21
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T14:55:56.407' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (35, N'AddProduct', N'Product', N'Object reference not set to an instance of an object.', N'   at ShopBridge.Controllers.ProductController.<AddProduct>d__3.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 53
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T15:06:32.327' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (36, N'AddProduct', N'Product', N'Object reference not set to an instance of an object.', N'   at ShopBridge.Controllers.ProductController.<AddProduct>d__3.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 53
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T15:07:09.277' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (37, N'AddProduct', N'Product', N'The associated metadata type for type ''ShopBridge.Models.PRODUCT'' contains the following unknown properties or fields: Name, Price, Description. Please make sure that the names of these members match the names of the properties on the main type.', N'   at System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor.TypeDescriptorCache.CheckAssociatedMetadataType(Type mainType, Type associatedMetadataType)
   at System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor.TypeDescriptorCache.ValidateMetadataType(Type type, Type associatedType)
   at System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor..ctor(ICustomTypeDescriptor parent, Type type, Type associatedMetadataType)
   at System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptionProvider.GetTypeDescriptor(Type objectType, Object instance)
   at System.Web.Http.Metadata.Providers.AssociatedMetadataProvider`1.CreateTypeInformation(Type type)
   at System.Web.Http.Metadata.Providers.AssociatedMetadataProvider`1.GetTypeInformation(Type type)
   at System.Web.Http.Metadata.Providers.AssociatedMetadataProvider`1.GetMetadataForType(Func`1 modelAccessor, Type modelType)
   at System.Web.Http.Validation.DefaultBodyModelValidator.Validate(Object model, Type type, ModelMetadataProvider metadataProvider, HttpActionContext actionContext, String keyPrefix)
   at System.Web.Http.ModelBinding.FormatterParameterBinding.<ExecuteBindingAsyncCore>d__18.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.HttpActionBinding.<ExecuteBindingAsyncCore>d__12.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T15:13:55.390' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (38, N'AddProduct', N'Product', N'The associated metadata type for type ''ShopBridge.Models.PRODUCT'' contains the following unknown properties or fields: Name, Price, Description. Please make sure that the names of these members match the names of the properties on the main type.', N'   at System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor.TypeDescriptorCache.CheckAssociatedMetadataType(Type mainType, Type associatedMetadataType)
   at System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor.TypeDescriptorCache.ValidateMetadataType(Type type, Type associatedType)
   at System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor..ctor(ICustomTypeDescriptor parent, Type type, Type associatedMetadataType)
   at System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptionProvider.GetTypeDescriptor(Type objectType, Object instance)
   at System.Web.Http.Metadata.Providers.AssociatedMetadataProvider`1.CreateTypeInformation(Type type)
   at System.Web.Http.Metadata.Providers.AssociatedMetadataProvider`1.GetTypeInformation(Type type)
   at System.Web.Http.Metadata.Providers.AssociatedMetadataProvider`1.GetMetadataForType(Func`1 modelAccessor, Type modelType)
   at System.Web.Http.Validation.DefaultBodyModelValidator.Validate(Object model, Type type, ModelMetadataProvider metadataProvider, HttpActionContext actionContext, String keyPrefix)
   at System.Web.Http.ModelBinding.FormatterParameterBinding.<ExecuteBindingAsyncCore>d__18.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.HttpActionBinding.<ExecuteBindingAsyncCore>d__12.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T15:14:16.030' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (39, N'AddProduct', N'Product', N'The associated metadata type for type ''ShopBridge.Models.PRODUCT'' contains the following unknown properties or fields: Name, Price, Description. Please make sure that the names of these members match the names of the properties on the main type.', N'   at System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor.TypeDescriptorCache.CheckAssociatedMetadataType(Type mainType, Type associatedMetadataType)
   at System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor.TypeDescriptorCache.ValidateMetadataType(Type type, Type associatedType)
   at System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptor..ctor(ICustomTypeDescriptor parent, Type type, Type associatedMetadataType)
   at System.ComponentModel.DataAnnotations.AssociatedMetadataTypeTypeDescriptionProvider.GetTypeDescriptor(Type objectType, Object instance)
   at System.Web.Http.Metadata.Providers.AssociatedMetadataProvider`1.CreateTypeInformation(Type type)
   at System.Web.Http.Metadata.Providers.AssociatedMetadataProvider`1.GetTypeInformation(Type type)
   at System.Web.Http.Metadata.Providers.AssociatedMetadataProvider`1.GetMetadataForType(Func`1 modelAccessor, Type modelType)
   at System.Web.Http.Validation.DefaultBodyModelValidator.Validate(Object model, Type type, ModelMetadataProvider metadataProvider, HttpActionContext actionContext, String keyPrefix)
   at System.Web.Http.ModelBinding.FormatterParameterBinding.<ExecuteBindingAsyncCore>d__18.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.HttpActionBinding.<ExecuteBindingAsyncCore>d__12.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T15:16:42.853' AS DateTime))
GO
INSERT [dbo].[ErrorLog] ([Id], [ActionName], [ControllerName], [Message], [StackTrace], [CreateTime]) VALUES (40, N'EditProduct', N'Product', N'Object reference not set to an instance of an object.', N'   at ShopBridge.Controllers.ProductController.<EditProduct>d__4.MoveNext() in C:\Users\spatil.FAJRINVESTMENT\Documents\Santosh\Think Bridge Test\ShopBridge\ShopBridge\Controllers\ProductController.cs:line 85
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Threading.Tasks.TaskHelpersExtensions.<CastToObject>d__1`1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ApiControllerActionInvoker.<InvokeActionAsyncCore>d__1.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ActionFilterResult.<ExecuteAsync>d__5.MoveNext()
--- End of stack trace from previous location where exception was thrown ---
   at System.Runtime.CompilerServices.TaskAwaiter.ThrowForNonSuccess(Task task)
   at System.Runtime.CompilerServices.TaskAwaiter.HandleNonSuccessAndDebuggerNotification(Task task)
   at System.Web.Http.Controllers.ExceptionFilterResult.<ExecuteAsync>d__6.MoveNext()', CAST(N'2021-12-16T17:05:44.560' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ErrorLog] OFF
GO
SET IDENTITY_INSERT [dbo].[PRODUCTS] ON 
GO
INSERT [dbo].[PRODUCTS] ([ID], [NAME], [PRICE], [DESCRIPTION], [OUTOFSTOCK], [MODELNUMBER]) VALUES (1, N'CPU', 0, N'test', 0, N'RM-800')
GO
INSERT [dbo].[PRODUCTS] ([ID], [NAME], [PRICE], [DESCRIPTION], [OUTOFSTOCK], [MODELNUMBER]) VALUES (2, N'Wallet', 6000, N'This Men''S Wallet Features Credit, Debit And Visiting Card Pockets, Currency Compartment, Transparent Id Pocket And More To Keep Your Important Essentials Always Ready For Use. It Is Made From Imported Leather To Last Long.', 0, NULL)
GO
INSERT [dbo].[PRODUCTS] ([ID], [NAME], [PRICE], [DESCRIPTION], [OUTOFSTOCK], [MODELNUMBER]) VALUES (3, N'Microphone', 6000, N'
Professional BM-800 Microphone - Exceptionally low self-noise and high sensitivity for highly critical studio recording. The cardioid pick-up pattern minimizes background noise and isolates the main sound source. Ideal for radio broadcasting studio, professional broadcasting, voice-over sound studio, stages, TV stations, music, Skype, Messages, FaceTime, Twitch, YouTube etc. Suspension Scissor Arm Stand - All sturdy and durable steel construction. Double-braced arms add strength. 360 degree flexible adjust the desired angle and height. The Wind Screen Pop Filter Mask Shield with Double-layer nylon mesh construction, efficiently reduce the plosive, wind interference, saliva spraying during your recording or broadcasting, get a clear and loud sound.The Wind Screen Pop Filter Mask Shield with Double-layer nylon mesh construction, efficiently reduce the plosive, wind interference, saliva spraying during your recording or broadcasting, get a clear and loud sound. U SHAPE SPLITTER This allows you to use your own high quality Hi-Fi headphone and Hi-Fi Microphone to all mobiles and tablets. Can be used with any portable device that uses a 4 position 3.5mm jack such as most mobile phones & Tablets.', 1, N'SOUVENIR BM-800')
GO
INSERT [dbo].[PRODUCTS] ([ID], [NAME], [PRICE], [DESCRIPTION], [OUTOFSTOCK], [MODELNUMBER]) VALUES (5, N'Bed Material Subtype Particle Board', 5000, N'The material used in this bed is laminated from all sides to give it full protection from moisture and other external factors.', 0, N'FK80501')
GO
SET IDENTITY_INSERT [dbo].[PRODUCTS] OFF
GO
ALTER TABLE [dbo].[ErrorLog] ADD  CONSTRAINT [DF_ErrorLog_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
ALTER TABLE [dbo].[PRODUCTS] ADD  CONSTRAINT [DF_PRODUCT_OUTOFSTOCK]  DEFAULT ((0)) FOR [OUTOFSTOCK]
GO
/****** Object:  StoredProcedure [dbo].[sp_GETALLPRODUCTS]    Script Date: 16/12/2021 17:52:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_GETALLPRODUCTS]

AS BEGIN

 SELECT Id,[NAME] AS Name, PRICE,[DESCRIPTION] AS Description, OutOfStock FROM PRODUCTS

END


--sp_GETALLPRODUCTS
GO
