.class public Lcom/ifengyu/im/imservice/services/MessageService$Holder;
.super Ljava/lang/Object;
.source "MessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/services/MessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Holder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ifengyu/im/imservice/services/MessageService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/ifengyu/im/imservice/services/MessageService;

    invoke-direct {v0}, Lcom/ifengyu/im/imservice/services/MessageService;-><init>()V

    sput-object v0, Lcom/ifengyu/im/imservice/services/MessageService$Holder;->INSTANCE:Lcom/ifengyu/im/imservice/services/MessageService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
