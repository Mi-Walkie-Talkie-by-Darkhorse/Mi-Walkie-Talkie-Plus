.class public Lcom/ifengyu/im/imservice/services/IMSessionManager$Holder;
.super Ljava/lang/Object;
.source "IMSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/services/IMSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ifengyu/im/imservice/services/IMSessionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/im/imservice/services/IMSessionManager;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/services/IMSessionManager;-><init>()V

    sput-object v0, Lcom/ifengyu/im/imservice/services/IMSessionManager$Holder;->INSTANCE:Lcom/ifengyu/im/imservice/services/IMSessionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
