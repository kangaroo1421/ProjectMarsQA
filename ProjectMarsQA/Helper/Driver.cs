﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TechTalk.SpecFlow;
//using AventStack.ExtentReports;
//using AventStack.ExtentReports.Gherkin.Model;
//using AventStack.ExtentReports.Reporter;
using BoDi;
using Gherkin.Ast;
using Gherkin.Events.Args.Ast;
//using MarsQA_1.FeatureFile;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using System.ComponentModel;
using System.Reflection;
using System.Threading;
using ProjectMarsQA.Steps;
//using Feature = AventStack.ExtentReports.Gherkin.Model.Feature;
//using Scenario = AventStack.ExtentReports.Gherkin.Model.Scenario;

namespace ProjectMarsQA.Helper
{
   
         [Binding]
        class Driver
        {
            public static IWebDriver driver { get; set; }

            #region Before Scenario
            [BeforeScenario]
            public static void SetUp()
            {
                //Defining the browser
                driver = new ChromeDriver();
                //LogInSteps.GivenIAmOnTheHomePage();
                //LogInSteps.WhenIEnterValidUsernameAndPassword();

            }
            #endregion
            #region wait
            public static void TurnOnWait()
            {
                driver.Manage().Timeouts().ImplicitWait = TimeSpan.FromSeconds(10);
            }

            #endregion
            #region AfterScenario
            [AfterScenario]
            //Close the browser
            public static void Close()
            {
            driver.Quit();
            }

        }
        #endregion

    }
