.class public Lcom/tencent/tauth/UiError;
.super Ljava/lang/Object;
.source "ProGuard"


# instance fields
.field public errorCode:I

.field public errorDetail:Ljava/lang/String;

.field public errorMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/tencent/tauth/UiError;->errorMessage:Ljava/lang/String;

    .line 3
    iput p1, p0, Lcom/tencent/tauth/UiError;->errorCode:I

    .line 4
    iput-object p3, p0, Lcom/tencent/tauth/UiError;->errorDetail:Ljava/lang/String;

    return-void
.end method
