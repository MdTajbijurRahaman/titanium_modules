/**
 * Ti.Paypal Module
 * Copyright (c) 2010-2013 by Appcelerator, Inc. All Rights Reserved.
 * Please see the LICENSE included with this distribution for details.
 */

#import "TiPaypalModule.h"
#import "TiBase.h"

@implementation TiPaypalModule

#pragma mark Lifecycle

static TiPaypalModule* instance;

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];
    instance = self;
}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably
	
	// you *must* call the superclass
	[super shutdown:sender];
}

+(TiPaypalModule*) instance
{
    return instance;
}

#pragma mark Cleanup 

-(void)dealloc
{
    instance = nil;
	// release any resources that have been retained by the module
	[super dealloc];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}

#pragma mark Properties

MAKE_SYSTEM_PROP(PAYPAL_TEXT_PAY, BUTTON_TEXT_PAY);
MAKE_SYSTEM_PROP(PAYPAL_TEXT_DONATE, BUTTON_TEXT_DONATE);

MAKE_SYSTEM_PROP(PAYMENT_TYPE_HARD_GOODS, TYPE_GOODS);
MAKE_SYSTEM_PROP(PAYMENT_TYPE_SERVICE, TYPE_SERVICE);
MAKE_SYSTEM_PROP(PAYMENT_TYPE_PERSONAL, TYPE_PERSONAL);
	
MAKE_SYSTEM_PROP(PAYMENT_SUBTYPE_NONE, SUBTYPE_NOT_SET);
MAKE_SYSTEM_PROP(PAYMENT_SUBTYPE_AFFILIATE, SUBTYPE_AFFILIATE_PAYMENTS);
MAKE_SYSTEM_PROP(PAYMENT_SUBTYPE_B2B, SUBTYPE_B2B);
MAKE_SYSTEM_PROP(PAYMENT_SUBTYPE_PAYROLL, SUBTYPE_PAYROLL);
MAKE_SYSTEM_PROP(PAYMENT_SUBTYPE_REBATES, SUBTYPE_REBATES);
MAKE_SYSTEM_PROP(PAYMENT_SUBTYPE_REFUNDS, SUBTYPE_REFUNDS);
MAKE_SYSTEM_PROP(PAYMENT_SUBTYPE_REIMBURSEMENTS, SUBTYPE_REIMBURSEMENTS);
MAKE_SYSTEM_PROP(PAYMENT_SUBTYPE_DONATIONS, SUBTYPE_DONATIONS);
MAKE_SYSTEM_PROP(PAYMENT_SUBTYPE_UTILITIES, SUBTYPE_UTILITIES);
MAKE_SYSTEM_PROP(PAYMENT_SUBTYPE_TUITION, SUBTYPE_TUITION);
MAKE_SYSTEM_PROP(PAYMENT_SUBTYPE_GOVERNMENT, SUBTYPE_GOVERNMENT);
MAKE_SYSTEM_PROP(PAYMENT_SUBTYPE_INSURANCE, SUBTYPE_INSURANCE);
MAKE_SYSTEM_PROP(PAYMENT_SUBTYPE_REMITTANCES, SUBTYPE_REMITTANCES);
MAKE_SYSTEM_PROP(PAYMENT_SUBTYPE_RENT, SUBTYPE_RENT);
MAKE_SYSTEM_PROP(PAYMENT_SUBTYPE_MORTGAGE, SUBTYPE_MORTGAGE);
MAKE_SYSTEM_PROP(PAYMENT_SUBTYPE_MEDICAL, SUBTYPE_MEDICAL);
MAKE_SYSTEM_PROP(PAYMENT_SUBTYPE_CHILDCARE, SUBTYPE_CHILD_CARE);
MAKE_SYSTEM_PROP(PAYMENT_SUBTYPE_EVENTS, SUBTYPE_EVENT_PLANNING);
MAKE_SYSTEM_PROP(PAYMENT_SUBTYPE_CONTRACTORS, SUBTYPE_GENERAL_CONTRACTORS);
MAKE_SYSTEM_PROP(PAYMENT_SUBTYPE_ENTERTAINMENT, SUBTYPE_ENTERTAINMENT);
MAKE_SYSTEM_PROP(PAYMENT_SUBTYPE_TOURISM, SUBTYPE_TOURISM);
MAKE_SYSTEM_PROP(PAYMENT_SUBTYPE_INVOICE, SUBTYPE_INVOICE);
MAKE_SYSTEM_PROP(PAYMENT_SUBTYPE_TRANSFER, SUBTYPE_TRANSFER);

MAKE_SYSTEM_PROP(BUTTON_152x33, BUTTON_152x33);
MAKE_SYSTEM_PROP(BUTTON_194x37, BUTTON_194x37);
MAKE_SYSTEM_PROP(BUTTON_278x43, BUTTON_278x43);
MAKE_SYSTEM_PROP(BUTTON_294x43, BUTTON_294x43);

MAKE_SYSTEM_PROP(PAYPAL_ENV_LIVE, ENV_LIVE);
MAKE_SYSTEM_PROP(PAYPAL_ENV_SANDBOX, ENV_SANDBOX);
MAKE_SYSTEM_PROP(PAYPAL_ENV_NONE, ENV_NONE);

MAKE_SYSTEM_PROP(PREAPPROVAL_DAY_SUNDAY, PP_DAYOFWEEK_SUNDAY);
MAKE_SYSTEM_PROP(PREAPPROVAL_DAY_MONDAY, PP_DAYOFWEEK_MONDAY);
MAKE_SYSTEM_PROP(PREAPPROVAL_DAY_TUESDAY, PP_DAYOFWEEK_TUESDAY);
MAKE_SYSTEM_PROP(PREAPPROVAL_DAY_WEDNESDAY, PP_DAYOFWEEK_WEDNESDAY);
MAKE_SYSTEM_PROP(PREAPPROVAL_DAY_THURSDAY, PP_DAYOFWEEK_THURSDAY);
MAKE_SYSTEM_PROP(PREAPPROVAL_DAY_FRIDAY, PP_DAYOFWEEK_FRIDAY);
MAKE_SYSTEM_PROP(PREAPPROVAL_DAY_SATURDAY, PP_DAYOFWEEK_SATURDAY);

MAKE_SYSTEM_PROP(PREAPPROVAL_PERIOD_DAILY, PP_PAYMENTPERIOD_DAILY);
MAKE_SYSTEM_PROP(PREAPPROVAL_PERIOD_WEEKLY, PP_PAYMENTPERIOD_WEEKLY);
MAKE_SYSTEM_PROP(PREAPPROVAL_PERIOD_BIWEEKLY, PP_PAYMENTPERIOD_BIWEEKLY);
MAKE_SYSTEM_PROP(PREAPPROVAL_PERIOD_SEMIMONTHLY, PP_PAYMENTPERIOD_SEMIMONTHLY);
MAKE_SYSTEM_PROP(PREAPPROVAL_PERIOD_MONTHLY, PP_PAYMENTPERIOD_MONTHLY);
MAKE_SYSTEM_PROP(PREAPPROVAL_PERIOD_ANNUALLY, PP_PAYMENTPERIOD_ANNUALLY);

// These two properties aren't exposed by PayPal on the iOS side, so... let's fake them, for now...
MAKE_SYSTEM_PROP(PREAPPROVAL_TYPE_AGREE_AND_PAY, 0);
MAKE_SYSTEM_PROP(PREAPPROVAL_TYPE_AGREE, 1);

@end
