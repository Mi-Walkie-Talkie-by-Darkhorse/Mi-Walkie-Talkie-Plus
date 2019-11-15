.class public Lcom/mi/mimsgsdk/net/QueryMediaIdRequest;
.super Lcom/mi/mimsgsdk/net/BaseRequest;
.source "QueryMediaIdRequest.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/mi/mimsgsdk/net/BaseRequest;-><init>()V

    invoke-static {}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdRequest;->newBuilder()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdRequest$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdRequest$Builder;->setAppid(I)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdRequest$Builder;->setConferenceId(J)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdRequest$Builder;->setFromGuid(Ljava/lang/String;)Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdRequest$Builder;->build()Lcom/mi/mimsgsdk/proto/SDKSignal$QueryMediaIdRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/net/QueryMediaIdRequest;->mRequest:Lcom/google/protobuf/GeneratedMessage;

    return-void
.end method


# virtual methods
.method protected getCmd()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const-string v0, "opensdk.signal.query_mediaid"

    return-object v0
.end method
