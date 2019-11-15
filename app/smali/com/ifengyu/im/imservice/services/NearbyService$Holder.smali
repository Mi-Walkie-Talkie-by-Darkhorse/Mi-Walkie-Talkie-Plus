.class public Lcom/ifengyu/im/imservice/services/NearbyService$Holder;
.super Ljava/lang/Object;
.source "NearbyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/services/NearbyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ifengyu/im/imservice/services/NearbyService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/im/imservice/services/NearbyService;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/services/NearbyService;-><init>()V

    sput-object v0, Lcom/ifengyu/im/imservice/services/NearbyService$Holder;->INSTANCE:Lcom/ifengyu/im/imservice/services/NearbyService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
