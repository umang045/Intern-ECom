import React from "react";
import {
  FaPhone,
  FaEnvelope,
  FaMapMarkerAlt,
  FaWhatsapp,
} from "react-icons/fa";

const ContactUs = () => {
  return (
    <div className="bg-gray-50 min-h-screen">
      <div className="container mx-auto px-6 py-12">
        <h1 className="text-3xl font-bold text-center text-gray-900">
          Contact Us
        </h1>
        <p className="text-center text-gray-600 mt-2">
          Have questions? Reach out to us anytime!
        </p>

        {/* Contact Details Section */}
        <div className="mt-10 grid md:grid-cols-3 gap-6">
          {/* Phone Support */}
          <div className="bg-white p-6 rounded-lg shadow-md text-center">
            <FaPhone className="text-red-500 text-4xl mx-auto" />
            <h3 className="text-lg font-semibold mt-3">Phone Support</h3>
            <p className="text-gray-600">+91 9099763599</p>
            <p className="text-gray-400 text-sm">Available 9 AM - 6 PM</p>
          </div>

          {/* Email Support */}
          <div className="bg-white p-6 rounded-lg shadow-md text-center">
            <FaEnvelope className="text-red-500 text-4xl mx-auto" />
            <h3 className="text-lg font-semibold mt-3">Email Us</h3>
            <p className="text-gray-600">support@eclothstore.com</p>
            <p className="text-gray-400 text-sm">Response within 24 hours</p>
          </div>

          {/* WhatsApp Support */}
          <div className="bg-white p-6 rounded-lg shadow-md text-center">
            <FaWhatsapp className="text-green-500 text-4xl mx-auto" />
            <h3 className="text-lg font-semibold mt-3">WhatsApp Chat</h3>
            <p className="text-gray-600">+91 9099763599</p>
            <p className="text-gray-400 text-sm">Instant replies</p>
          </div>
        </div>

        {/* Store Location with Map */}
        <div className="mt-16">
          <h2 className="text-2xl font-bold text-gray-900 text-center">
            Visit Our Store
          </h2>
          <p className="text-center text-gray-600">
            Find us at our Ahmedabad location.
          </p>
          <div className="flex flex-col items-center mt-5">
            <div className="bg-white p-6 rounded-lg shadow-md w-full md:w-2/3 text-center">
              <FaMapMarkerAlt className="text-red-500 text-4xl mx-auto" />
              <h3 className="text-lg font-semibold mt-3">Our Address</h3>
              <p className="text-gray-600">
                Kargil, Ahmedabad, India
              </p>
              <p className="text-gray-400 text-sm">Open: 10 AM - 8 PM</p>
            </div>
            <iframe
              className="mt-5 w-full md:w-2/3 h-64 rounded-lg shadow-md"
              src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14683.940052252268!2d72.55901565!3d23.022505250000003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e84f2fc1f4f15%3A0x8c7a5f5c5f9a3c4e!2sAhmedabad%2C%20Gujarat%2C%20India!5e0!3m2!1sen!2sin!4v1632408381765!5m2!1sen!2sin"
              allowFullScreen=""
              loading="lazy"
            ></iframe>
          </div>
        </div>

        {/* FAQs Section */}
        <div className="mt-16">
          <h2 className="text-2xl font-bold text-gray-900 text-center">
            Frequently Asked Questions
          </h2>
          <div className="mt-5 max-w-2xl mx-auto">
            <details className="bg-white p-4 rounded-lg shadow-md mb-3">
              <summary className="font-semibold cursor-pointer">
                How can I track my order?
              </summary>
              <p className="text-gray-600 mt-2">
                Once your order is shipped, you'll receive a tracking link via
                email.
              </p>
            </details>
            <details className="bg-white p-4 rounded-lg shadow-md mb-3">
              <summary className="font-semibold cursor-pointer">
                What is your return policy?
              </summary>
              <p className="text-gray-600 mt-2">
                We offer a 14-day return policy on unused items. Contact support
                for details.
              </p>
            </details>
            <details className="bg-white p-4 rounded-lg shadow-md mb-3">
              <summary className="font-semibold cursor-pointer">
                Do you offer international shipping?
              </summary>
              <p className="text-gray-600 mt-2">
                Yes! We deliver worldwide. Shipping fees and times vary by
                location.
              </p>
            </details>
          </div>
        </div>
      </div>
    </div>
  );
};

export default ContactUs;
