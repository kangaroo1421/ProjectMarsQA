using System;
using TechTalk.SpecFlow;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium;
using System.Threading;
using NUnit.Framework;
using ProjectMarsQA.Helper;

namespace ProjectMarsQA.Steps
{
    [Binding]
    public class LogInSteps
    {
        
       [Given(@"I am on the Home page")]
        public static void GivenIAmOnTheHomePage()
        {
            Driver.driver.Navigate().GoToUrl("http://192.168.99.100:5000");
            Driver.driver.Manage().Window.Maximize();
        }
        
        
        [When(@"I enter valid username and password")]
        public static void WhenIEnterValidUsernameAndPassword()
        {
            //Enter sign in
            Driver.driver.FindElement(By.XPath("//*[@id='home']/div/div/div[1]/div/a")).Click();
            //Enter Username
            Driver.driver.FindElement(By.XPath("/html/body/div[2]/div/div/div[1]/div/div[1]/input")).SendKeys("Kangaroo1421@gmail.com");

            //Enter password
            Driver.driver.FindElement(By.XPath("/html/body/div[2]/div/div/div[1]/div/div[2]/input")).SendKeys("America@01");
            //Click on Login Button
            Driver.driver.FindElement(By.XPath("/html/body/div[2]/div/div/div[1]/div/div[4]/button")).Click();
        }

        [Then(@"I should go to Profile Page")]
        public static void ThenIShouldGoToProfilePage()
        {
            Thread.Sleep(10000);
            //validate seller logged in
            Assert.That(Driver.driver.FindElement(By.XPath("//div[@class='title' and contains(text(),'Guriqbal Singh Sudan')]")).Text, Is.EqualTo("Guriqbal Singh Sudan"));
                 

        }
    }
}
