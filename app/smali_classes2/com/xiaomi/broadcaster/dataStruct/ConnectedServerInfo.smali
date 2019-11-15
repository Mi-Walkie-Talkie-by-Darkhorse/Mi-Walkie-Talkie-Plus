.class public Lcom/xiaomi/broadcaster/dataStruct/ConnectedServerInfo;
.super Ljava/lang/Object;
.source "ConnectedServerInfo.java"


# instance fields
.field public bandwidth:I

.field public domain:Ljava/lang/String;

.field public ip:Ljava/lang/String;

.field public port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/broadcaster/dataStruct/ConnectedServerInfo;->ip:Ljava/lang/String;

    iput p3, p0, Lcom/xiaomi/broadcaster/dataStruct/ConnectedServerInfo;->port:I

    iput-object p2, p0, Lcom/xiaomi/broadcaster/dataStruct/ConnectedServerInfo;->domain:Ljava/lang/String;

    iput p4, p0, Lcom/xiaomi/broadcaster/dataStruct/ConnectedServerInfo;->bandwidth:I

    return-void
.end method
