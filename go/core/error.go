package core

type BranchAggregateError struct {
	IsBranchAggregateError bool
	Sdk              string
	Code             string
	Msg              string
	Ctx              *Context
	Result           any
	Spec             any
}

func NewBranchAggregateError(code string, msg string, ctx *Context) *BranchAggregateError {
	return &BranchAggregateError{
		IsBranchAggregateError: true,
		Sdk:              "BranchAggregate",
		Code:             code,
		Msg:              msg,
		Ctx:              ctx,
	}
}

func (e *BranchAggregateError) Error() string {
	return e.Msg
}
