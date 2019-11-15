.class public Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;
.super Ljava/lang/Object;
.source "BaseDataMonitor.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonitorItem"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4a02ada10d422145L


# instance fields
.field public accip:Ljava/lang/String;

.field public apn:Ljava/lang/String;

.field public apnType:Ljava/lang/String;

.field public clientIp:Ljava/lang/String;

.field public clientIsp:Ljava/lang/String;

.field public cmd:Ljava/lang/String;

.field public errorCode:I

.field public isSuccess:Z

.field public port:I

.field public seq:J

.field public waste:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->isSuccess:Z

    iput v1, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->errorCode:I

    iput-wide v2, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->waste:J

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->accip:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->apn:Ljava/lang/String;

    iput-wide v2, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->seq:J

    iput v1, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->port:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->apnType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->clientIp:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$MonitorItem;->clientIsp:Ljava/lang/String;

    return-void
.end method
