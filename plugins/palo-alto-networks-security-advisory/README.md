---
availability: INSTALLABLE
description: A plugin that allows you to lookup recent security advisories.
installation_asset_uuid: cd80f8f6-2ec0-4836-9c5f-1094503444e4
name: Look Up Recent Security Advisories
purple_chat_link: https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+get+recent+security+info+from+Palo+Alto+Networks+about+PAN-OS.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ELooking+up+security+advisories%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+recent+security+advisories+for+PAN-OS+from+Palo+Alto+Networks%3A%22%7D%2C%7B%22richText%22%3A%221.+CVE-2025-0115%3A+Authenticated+Admin+File+Read+Vulnerability+in+PAN-OS+CLI+%28Severity%3A+MEDIUM%29.+%3Ca+href%3D%5C%22%5C%22%3ERead+More%3C%2Fa%3E%22%7D%2C%7B%22richText%22%3A%222.+CVE-2025-0116%3A+PAN-OS+XML+External+Entity+Processing+Vulnerability+%28Severity%3A+HIGH%29.+%3Ca+href%3D%5C%22%5C%22%3ERead+More%3C%2Fa%3E%22%7D%2C%7B%22richText%22%3A%223.+CVE-2025-0117%3A+Reflected+Cross-Site+Scripting+Vulnerability+in+PAN-OS+Web+Interface+%28Severity%3A+MEDIUM%29.+%3Ca+href%3D%5C%22%5C%22%3ERead+More%3C%2Fa%3E%22%7D%2C%7B%22richText%22%3A%224.+CVE-2025-0118%3A+PAN-OS+Command+Injection+Vulnerability+%28Severity%3A+CRITICAL%29.+%3Ca+href%3D%5C%22%5C%22%3ERead+More%3C%2Fa%3E%22%7D%2C%7B%22richText%22%3A%225.+CVE-2025-0119%3A+Denial-of-Service+Vulnerability+in+PAN-OS+SSH+Service+%28Severity%3A+HIGH%29.+%3Ca+href%3D%5C%22%5C%22%3ERead+More%3C%2Fa%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D
solution_tags:
- IT
systems:
- palo-alto-networks
---

## Introduction

The **Lookup Security Advisory** plugin enables users to retrieve the latest vulnerability and threat advisories from **Palo Alto Networks** directly within the Moveworks AI Assistant. This allows security teams to stay up-to-date and take immediate action—without leaving their workflow.

This guide will help you install this plugin within minutes in Agent Studio. Let’s get started!

## Prerequisites

- Access to **Agent Studio**

## What are we building?

### Agent Design

This [purple chat](https://developer.moveworks.com/creator-studio/developer-tools/purple-chat?conversation=%7B%22startTimestamp%22%3A%2211%3A43+AM%22%2C%22messages%22%3A%5B%7B%22parts%22%3A%5B%7B%22richText%22%3A%22I+want+to+get+recent+security+info+from+Palo+Alto+Networks+about+PAN-OS.%22%7D%5D%2C%22role%22%3A%22user%22%7D%2C%7B%22parts%22%3A%5B%7B%22reasoningSteps%22%3A%5B%7B%22richText%22%3A%22%3Cp%3ELooking+up+security+advisories%3C%2Fp%3E%22%2C%22status%22%3A%22success%22%7D%5D%7D%2C%7B%22richText%22%3A%22Here+are+the+recent+security+advisories+for+PAN-OS+from+Palo+Alto+Networks%3A%22%7D%2C%7B%22richText%22%3A%221.+CVE-2025-0115%3A+Authenticated+Admin+File+Read+Vulnerability+in+PAN-OS+CLI+%28Severity%3A+MEDIUM%29.+%3Ca+href%3D%5C%22%5C%22%3ERead+More%3C%2Fa%3E%22%7D%2C%7B%22richText%22%3A%222.+CVE-2025-0116%3A+PAN-OS+XML+External+Entity+Processing+Vulnerability+%28Severity%3A+HIGH%29.+%3Ca+href%3D%5C%22%5C%22%3ERead+More%3C%2Fa%3E%22%7D%2C%7B%22richText%22%3A%223.+CVE-2025-0117%3A+Reflected+Cross-Site+Scripting+Vulnerability+in+PAN-OS+Web+Interface+%28Severity%3A+MEDIUM%29.+%3Ca+href%3D%5C%22%5C%22%3ERead+More%3C%2Fa%3E%22%7D%2C%7B%22richText%22%3A%224.+CVE-2025-0118%3A+PAN-OS+Command+Injection+Vulnerability+%28Severity%3A+CRITICAL%29.+%3Ca+href%3D%5C%22%5C%22%3ERead+More%3C%2Fa%3E%22%7D%2C%7B%22richText%22%3A%225.+CVE-2025-0119%3A+Denial-of-Service+Vulnerability+in+PAN-OS+SSH+Service+%28Severity%3A+HIGH%29.+%3Ca+href%3D%5C%22%5C%22%3ERead+More%3C%2Fa%3E%22%7D%5D%2C%22role%22%3A%22assistant%22%7D%5D%7D) shows the experience we are going to build.

## Installation Steps

We recommend creating the connector for [**Palo Alto Networks**](https://developer.moveworks.com/creator-studio/resources/connector?id=palo-alto-networks) first, prior to installing this plugin. Please follow the Palo Alto Networks Connector Guide to create the connector. No additional permissions are required for this plugin beyond XML API access.

After configuring the connector, refer to our [plugin installation documentation](https://help.moveworks.com/docs/ai-agent-marketplace-installation) for instructions on how to install and activate the plugin in Agent Studio.

## Appendix

**RSS Feed for Palo Alto Networks Security Advisories**

This plugin uses the following RSS feed to pull security advisory data:

[https://security.paloaltonetworks.com/rss.xml](https://security.paloaltonetworks.com/rss.xml?&sort=-date)

No authentication or additional setup is required to access this feed.
