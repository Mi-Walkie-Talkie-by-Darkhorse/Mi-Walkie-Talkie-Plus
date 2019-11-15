.class Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost$S;
.super Ljava/lang/Object;
.source "MiLinkServiceHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "S"
.end annotation


# instance fields
.field newState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

.field oldState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;


# direct methods
.method public constructor <init>(Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost$S;->oldState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    iput-object p2, p0, Lcom/mi/milinkforgame/sdk/client/internal/MiLinkServiceHost$S;->newState:Lcom/mi/milinkforgame/sdk/data/Const$MiLinkSdkState;

    return-void
.end method
