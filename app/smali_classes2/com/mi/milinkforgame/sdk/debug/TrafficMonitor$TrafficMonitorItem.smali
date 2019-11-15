.class Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor$TrafficMonitorItem;
.super Ljava/lang/Object;
.source "TrafficMonitor.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/debug/TrafficMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TrafficMonitorItem"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1a300d5178d8f7f7L


# instance fields
.field public count:I

.field public totalSize:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
