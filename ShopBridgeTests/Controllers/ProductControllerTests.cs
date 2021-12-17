using Microsoft.VisualStudio.TestTools.UnitTesting;
using ShopBridge.Controllers;
using ShopBridge.Models;
using ShopBridge.ViewModels;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity.Validation;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ShopBridge.Controllers.Tests
{
    [TestClass()]
    public class ProductControllerTests
    {
        #region Product List Get ALL

        [TestMethod()]
        public async Task productList_Check_result()
        {
            //Arrange
            var controller = new ProductController();
            //Act
            var result = await controller.ProductList();
            var _result = result as Response;
            //Asert
            Assert.IsNotNull(result);
            Assert.IsInstanceOfType(result, typeof(Response));

            //Assert
            Assert.AreNotEqual(200, _result.StatusCode);
            Assert.AreNotEqual(String.Empty, _result.StatusMessage);
        }


        #endregion

        #region Get Product

        [TestMethod()]
        public async Task ProductGet_OkResult()
        {
            //Arrange
            var controller = new ProductController();
            var id = 1;
            //Act
            var result = await controller.GetProduct(id);
            var _result = result as Response;
            //Assert
            Assert.IsInstanceOfType(result, typeof(Response));
            Assert.AreNotEqual(200, _result.StatusCode);
            Assert.AreNotEqual(String.Empty, _result.StatusMessage);
        }

        [TestMethod()]
        public async Task ProductGet_NotFound()
        {
            //Arrange
            var controller = new ProductController();
            var id = 500;
            //Act
            var result = await controller.GetProduct(id);
            var _result = result as Response;
            //Assert
            Assert.AreNotEqual(200, _result.StatusCode);
            Assert.AreNotEqual(String.Empty, _result.StatusMessage);
        }

        #endregion

        #region Modity tests
       
        [TestMethod()]
        public async Task EditProductTest()
        {
            //Arrange
            var controller = new ProductController();
            //Act
            PRODUCT product = new PRODUCT();
            product.ID = 1;
            product.MODELNUMBER = "RM-800";
            product.NAME = "CPU";
            product.DESCRIPTION = "test";
            var result = await controller.EditProduct(product);
            var _result = result as Response;
            //Asert
            Assert.IsNotNull(result);
            Assert.AreNotEqual(200, _result.StatusCode);
        }

        [TestMethod()]
        [ExpectedException(typeof(NullReferenceException))]
        public async Task EditProductTest_TestNull()
        {
            //Arrange
            var controller = new ProductController();
            //Act
            PRODUCT product = null;
            var result = await controller.EditProduct(product);
            var _result = result as Response;
            //Asert
            Assert.AreNotEqual(500, _result.StatusCode);
        }

        [TestMethod()]
        public async Task EditProductTest_Name_TestValidation()
        {
            var controller = new ProductController();

            PRODUCT product =  new PRODUCT();
           
            product.NAME = "CPU";
            var result = await controller.EditProduct(product);
            var ValidName = controller.ModelState.Keys.Contains("NAME");
            Assert.AreNotEqual(true, ValidName);
        }


        #endregion


        #region Delete

        [TestMethod()]
        public async Task ProductDelete_Success_Result()
        {
            //Arrange
            var controller = new ProductController();
            var id = 1;
            //Act
            var result = await controller.DeleteProduct(id);
            var _result = result as Response;
            //Assert
            Assert.IsInstanceOfType(result, typeof(Response));
            Assert.AreNotEqual(200, _result.StatusCode);
            Assert.AreNotEqual(String.Empty, _result.StatusMessage);
        }

        [TestMethod()]
        public async Task ProductDelete_NotFOund_Result()
        {
            //Arrange
            var controller = new ProductController();
            var id = 500;
            //Act
            var result = await controller.DeleteProduct(id);
            var _result = result as Response;
            //Assert
            Assert.IsInstanceOfType(result, typeof(Response));
            Assert.AreNotEqual(200, _result.StatusCode);
            Assert.AreNotEqual(String.Empty, _result.StatusMessage);
        }
        #endregion

        #region Add Product

        [TestMethod()]
        public async Task AddProductTest()
        {
            //Arrange
            var controller = new ProductController();
            //Act
            PRODUCT product = new PRODUCT();
            product.ID = 0;
            product.MODELNUMBER = "RM-800";
            product.NAME = "CPU";
            product.DESCRIPTION = "test";
            var result = await controller.AddProduct(product);
            var _result = result as Response;
            //Asert
            Assert.IsNotNull(result);
            Assert.AreNotEqual(200, _result.StatusCode);
        }

        [TestMethod()]
        [ExpectedException(typeof(NullReferenceException))]
        public async Task AddProductTest_TestNull()
        {
            //Arrange
            var controller = new ProductController();
            //Act
            PRODUCT product = null;
            var result = await controller.AddProduct(product);
            var _result = result as Response;
            //Asert
            Assert.AreNotEqual(500, _result.StatusCode);
        }

        [TestMethod()]
        public async Task AddProductTest_Name_TestValidation()
        {
            var controller = new ProductController();

            PRODUCT product = new PRODUCT();

            product.NAME = "CPU";
            var result = await controller.AddProduct(product);
            var ValidName = controller.ModelState.Keys.Contains("NAME");
            Assert.AreNotEqual(true, ValidName);
        }
        #region
    }
}