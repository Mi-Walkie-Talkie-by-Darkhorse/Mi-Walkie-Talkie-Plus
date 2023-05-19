.class public interface abstract annotation Lcom/shanlitech/et/notice/event/OrganizationEvent$From;
.super Ljava/lang/Object;
.source "OrganizationEvent.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shanlitech/et/notice/event/OrganizationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "From"
.end annotation


# static fields
.field public static final AddOrg:I = 0x3

.field public static final DeleteOrg:I = 0x6

.field public static final GetOrgUserList:I = 0x1

.field public static final MoveInOrg:I = 0x5

.field public static final MoveOutOrg:I = 0x4

.field public static final SetOrgName:I = 0x2

.field public static final UpdateOrgUserList:I = 0x7
