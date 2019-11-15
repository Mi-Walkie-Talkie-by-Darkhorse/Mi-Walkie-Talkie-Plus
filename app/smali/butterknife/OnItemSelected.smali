.class public interface abstract annotation Lbutterknife/OnItemSelected;
.super Ljava/lang/Object;
.source "OnItemSelected.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lbutterknife/internal/ListenerClass;
    callbacks = Lbutterknife/OnItemSelected$Callback;
    setter = "setOnItemSelectedListener"
    targetType = "android.widget.AdapterView<?>"
    type = "android.widget.AdapterView.OnItemSelectedListener"
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lbutterknife/OnItemSelected;
        callback = .enum Lbutterknife/OnItemSelected$Callback;->ITEM_SELECTED:Lbutterknife/OnItemSelected$Callback;
        value = {
            -0x1
        }
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbutterknife/OnItemSelected$Callback;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract callback()Lbutterknife/OnItemSelected$Callback;
.end method

.method public abstract value()[I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end method
