.class public interface abstract annotation Lbutterknife/OnItemLongClick;
.super Ljava/lang/Object;
.source "OnItemLongClick.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lbutterknife/internal/ListenerClass;
    method = {
        .subannotation Lbutterknife/internal/ListenerMethod;
            defaultReturn = "false"
            name = "onItemLongClick"
            parameters = {
                "android.widget.AdapterView<?>",
                "android.view.View",
                "int",
                "long"
            }
            returnType = "boolean"
        .end subannotation
    }
    setter = "setOnItemLongClickListener"
    targetType = "android.widget.AdapterView<?>"
    type = "android.widget.AdapterView.OnItemLongClickListener"
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lbutterknife/OnItemLongClick;
        value = {
            -0x1
        }
    .end subannotation
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
.method public abstract value()[I
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation
.end method
