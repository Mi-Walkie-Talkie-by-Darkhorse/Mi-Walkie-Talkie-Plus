.class Lcom/mi/mimsgsdk/controller/MessageController$MessageControllerHolder;
.super Ljava/lang/Object;
.source "MessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/controller/MessageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageControllerHolder"
.end annotation


# static fields
.field private static instance:Lcom/mi/mimsgsdk/controller/MessageController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/mimsgsdk/controller/MessageController;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/controller/MessageController;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/controller/MessageController$MessageControllerHolder;->instance:Lcom/mi/mimsgsdk/controller/MessageController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/mi/mimsgsdk/controller/MessageController;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/controller/MessageController$MessageControllerHolder;->instance:Lcom/mi/mimsgsdk/controller/MessageController;

    return-object v0
.end method
